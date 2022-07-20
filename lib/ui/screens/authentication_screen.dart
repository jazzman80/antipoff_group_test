import 'package:antipoff_group_test/controllers/bindings.dart';
import 'package:antipoff_group_test/controllers/user_data_controller.dart';
import 'package:antipoff_group_test/controllers/validation_controller.dart';
import 'package:antipoff_group_test/ui/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Flexible(
                child: SizedBox(
                  height: 72.0,
                ),
              ),
              const SizedBox(
                width: 120.0,
                child: Image(
                  image: AssetImage('images/logo.png'),
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Text(
                'simple life'.tr,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Flexible(
                child: SizedBox(
                  height: 120.0,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'authentication'.tr,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                onChanged: (text) => ValidationController.use.email = text,
                decoration: InputDecoration(
                  hintText: 'enter email'.tr,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                onChanged: (text) => ValidationController.use.password = text,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'enter password'.tr,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              SizedBox(
                width: double.infinity,
                child: GetBuilder<ValidationController>(
                    builder: (validationController) => ElevatedButton(
                          onPressed: validationController.isLoginValid
                              ? () async {
                                  await UserDataController.use.loadData();
                                  Get.offAll(
                                    () => const MainScreen(),
                                    binding: MainBinding(),
                                  );
                                }
                              : null,
                          child: Text('enter'.tr),
                        )),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
