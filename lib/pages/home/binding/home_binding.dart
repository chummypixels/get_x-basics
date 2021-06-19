import 'package:get/get.dart';
import 'package:get_x_example/pages/home/controller/home_controller.dart';
import 'package:get_x_example/services/api_service.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ApiService());
    Get.put(HomeController());
  }
}
