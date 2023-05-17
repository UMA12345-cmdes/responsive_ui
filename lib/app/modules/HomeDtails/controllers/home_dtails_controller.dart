// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeDtailsController extends GetxController {
  var currentIndex = 0.obs;
  List<String> items = ["S", "M", "L", "XL"].obs;

  var sController;
  var indexxx = 0.obs;
  @override
  void onInit() {
    sController = PageController(
      initialPage: 1,
      keepPage: true,
      viewportFraction: 1.0,
    );

    super.onInit();
  }
}
