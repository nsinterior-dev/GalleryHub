import 'package:client/app/modules/dashboard/dashboard_controller.dart';
import 'package:get/get.dart';

import '../photo/photo_controller.dart';

class DashboardBindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<DashboardController>(DashboardController());
    Get.put<PhotoController>(PhotoController());
  }
}