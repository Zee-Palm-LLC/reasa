import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:reasa/app/Model/resident_Model.dart';

class FavouriteController extends GetxController {
  //TODO: Implement HomeController

  Rx<List<Resident>?> favlist = Rx<List<Resident>?>(null);
  List<Resident>? get favouritelist {
    return favlist.value;
  }

  void favouritepressed(Resident resident) {
    if (favlist.value?.isEmpty ?? true) {
      log("null condition running");
      favlist.value = [resident];
    } else {
      log("not null condition running");

      favlist.value!.contains(resident)
          ? favlist.value!.remove(resident)
          : favlist.value!.add(resident);
    }

    //
    //  favlist.value!.contains(resident)? isFavourite : !isFavourite;
  }

  // void remove(Resident resident) {
  //   favlist.value!.remove(resident);
  // }
  // Rx<List<Resident>>(null);

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
