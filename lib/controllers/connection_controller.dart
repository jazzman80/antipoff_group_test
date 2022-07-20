import 'dart:async';
import 'package:get/get.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectionController extends GetxController {
  late final StreamSubscription _subscription;
  bool isConnected = true;

  @override
  void onInit() {
    _subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        isConnected = false;
      } else {
        isConnected = true;
      }
      update();
    });
    super.onInit();
  }

  @override
  void onClose() {
    _subscription.cancel();
    super.onClose();
  }
}
