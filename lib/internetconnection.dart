import 'dart:html';

import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class internet extends GetxController {
  Connectivity _connectivity = Connectivity();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _connectivity.onConnectivityChanged.listen(Netstatus);
  }

  Netstatus(List<ConnectivityResult> cr) {
    if (cr == ConnectivityResult.none) {
      Get.rawSnackbar(
          title: "No internet",
          message: "Connect to Internet to proceed",
          icon: Icon(
            Icons.wifi_off,
            color: Colors.blue,
          ),
          isDismissible: true,
          duration: Duration(days: 1),
          shouldIconPulse: true);
    } else if (Get.isSnackbarOpen) {
      Get.closeCurrentSnackbar();
    }
  }
}