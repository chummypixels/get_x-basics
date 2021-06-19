import 'package:get/get.dart';
import 'package:get_x_example/pages/home/controller/detail_controller.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(DetailController());
  }
}
