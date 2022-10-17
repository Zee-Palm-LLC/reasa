import 'package:flutter/widgets.dart';

import 'package:reasa/app/data/assets_path.dart';

class ContactUsModel {
  String image;
  String name;
  
  ContactUsModel({
    required this.image,
    required this.name,
  });
}

List<ContactUsModel> contactlist = [
  customerservices,
  whatsApp,
  website,
  facebook,
  twitter,
  instagram,  
];

ContactUsModel customerservices = ContactUsModel(
  name: "Customer Service",
  image: CustomAssets.bluecustomerservices,

);

ContactUsModel whatsApp = ContactUsModel(
  name: "WhatsApp",
  image: CustomAssets.bluewhatsapp,
);

ContactUsModel website = ContactUsModel(
  name: "Website",
  image: CustomAssets.bluewebsite,
);

ContactUsModel facebook = ContactUsModel(
  name: "Facebook",
  image: CustomAssets.bluefacebook
);

ContactUsModel twitter = ContactUsModel(
  name: "Twitter",
  image: CustomAssets.bluetwitter,
);

ContactUsModel instagram = ContactUsModel(
  name: "Instagram",
  image: CustomAssets.blueinsta,
);


