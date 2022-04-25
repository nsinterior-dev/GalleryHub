import 'package:client/app/modules/authentication/controllers/initial_controller.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<InitialController>(InitialController());
  }
}