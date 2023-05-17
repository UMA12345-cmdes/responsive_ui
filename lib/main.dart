import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
   ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) => GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      debugShowMaterialGrid: false,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    ),)
  );
}
