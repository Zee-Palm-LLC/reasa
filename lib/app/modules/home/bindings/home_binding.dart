import 'package:get/get.dart';
import 'package:reasa/app/modules/home/controllers/favourite_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<FavouriteController>(
      () => FavouriteController(),
    );
  }
}
