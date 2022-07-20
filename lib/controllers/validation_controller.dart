import 'package:antipoff_group_test/data/repository.dart';
import 'package:get/get.dart';

class ValidationController extends GetxController {
  static ValidationController get use => Get.find();

  set email(newEmail) {
    Repository.email = newEmail;
    update();
  }

  set password(newPassword) {
    Repository.password = newPassword;
    update();
  }

  get isLoginValid =>
      Repository.email.isEmail && Repository.password.isNotEmpty;
}
