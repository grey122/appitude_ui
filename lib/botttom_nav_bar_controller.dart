import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class BottomNavBarCtr extends GetxController {
  //final products = <DemoProduct>[].obs;
  var isVisible = true.obs;
//ff
  late ScrollController controller;

  @override
  void onInit() {
    super.onInit();
    controller = ScrollController();
    controller.addListener(listen);
  }

  void listen() {
    final direction = controller.position.userScrollDirection;

    if (direction == ScrollDirection.forward) {
      show();
    } else if (direction == ScrollDirection.reverse) {
      hide();
    }
  }

  void show() {
    if (!isVisible.value) isVisible.value = true;
  }

  void hide() {
    if (isVisible.value) {
      isVisible.value = false;
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  // @override
  // void onClose() {
  //   Get.printInfo(info: 'Products: onClose');
  //   controller.dispose();
  //   super.onClose();
  // }
}
