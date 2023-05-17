import 'package:get/get.dart';

import '../controllers/home_dtails_controller.dart';

class HomeDtailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeDtailsController>(
      () => HomeDtailsController(),
    );
  }
}
