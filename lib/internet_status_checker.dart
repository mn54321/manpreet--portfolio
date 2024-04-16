import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class InternetStatusChecker extends GetxController {
  final Connectivity _connectivity = Connectivity();
  @override
  void onInit() {
    super.onInit();
    _connectivity.onConnectivityChanged.listen(_netstatus);
  }

  void _netstatus(List<ConnectivityResult> cr) {
    if (cr.contains(ConnectivityResult.none)) {
      Get.rawSnackbar(
          title: "No internet",
          message: "Connect to Internet to proceed",
          icon: const Icon(
            Icons.wifi_off,
            color: Colors.blue,
          ),
          isDismissible: false,
          duration: const Duration(days: 1),
          shouldIconPulse: true);
    } else if (Get.isSnackbarOpen) {
      Get.closeCurrentSnackbar();
    }
  }
}
