import 'package:flutter/widgets.dart';

import 'package:reasa/app/data/assets_path.dart';

class InviteModel {
  String image;
  String name;
  String phonenumber;
  bool isInvited;
  InviteModel({
    required this.image,
    required this.name,
    required this.phonenumber,
    required this.isInvited,
  });
}

List<InviteModel> invitelist = [
  lauralee,
   rohan,
  alfonzo,
  augesta,
  freida,
  lauralee,
   rohan,
  alfonzo,
  augesta,
  freida,
  
  
];

InviteModel lauralee = InviteModel(
  name: "Lauralee Quintero",
  image: CustomAssets.charalett,
  isInvited: false,
  phonenumber: '+1-300-555-0135',
);

InviteModel rohan = InviteModel(
  name: "Annabel Rohan",
  image: CustomAssets.natprofile,
  isInvited: false,
  phonenumber: '+1-300-555-0135',
);

InviteModel alfonzo = InviteModel(
  name: "Alfonzo Schuessler",
  image: CustomAssets.lauratee,
  isInvited: false,
  phonenumber: '+1-300-555-0135',
);

InviteModel augesta = InviteModel(
  name: "Augustina Midgett",
  image: CustomAssets.ailee,
  isInvited: false,
  phonenumber: '+1-300-555-0135',
);

InviteModel freida = InviteModel(
  name: "Freida Varnes",
  image: CustomAssets.rodalfo,
  isInvited: false,
  phonenumber: '+1-300-555-0135',
);

