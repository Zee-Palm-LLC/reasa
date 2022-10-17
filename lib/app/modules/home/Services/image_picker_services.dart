import 'dart:io';

import 'package:get/get.dart';

import 'package:image_picker/image_picker.dart';

class ImageService {
  File? image;
  final _picker = ImagePicker();

  Future<File?> getImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      image = File(pickedFile.path);
      return image;
    } else {
      Get.snackbar("No Image", "Image not Selected");
      return null;
    }
  }
}