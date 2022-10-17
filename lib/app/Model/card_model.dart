import 'package:flutter/widgets.dart';

import 'package:reasa/app/data/assets_path.dart';

class CardModel {
  String image;
  String cardname;
  int? value;
  String cardnumber;
  String cvv;
  DateTime expiredate;
  int lastdigits;
  CardModel({
    required this.image,
    required this.cardname,
    this.value,
    required this.cardnumber,
    required this.cvv,
    required this.expiredate,
    required this.lastdigits,
  });
}

List<CardModel> cards = [
  paypal,
  googlepay,
  apple,
  newcard,
];

CardModel newcard = CardModel(
    image: CustomAssets.mastercard,
    cardname: "•••• •••• •••• •••• 4679",
    cardnumber: "",
    cvv: "555",
    expiredate: DateTime.utc(2026, 07, 19),
    lastdigits: 789);

CardModel paypal = CardModel(
    image: CustomAssets.paypal,
    cardname: "PayPal",
    cardnumber: "2672 4738 7837 7285",
    cvv: "699",
    expiredate: DateTime.utc(2026, 07, 19),
    lastdigits: 7285);

CardModel googlepay = CardModel(
    image: CustomAssets.googlepng,
    cardname: "Google Pay",
    cardnumber: "2672 4738 7837 7285",
    cvv: "699",
    expiredate: DateTime.utc(2026, 07, 19),
    lastdigits: 7285);

CardModel apple = CardModel(
    image: CustomAssets.applepng,
    cardname: "Apple Pay",
    cardnumber: "2672 4738 7837 7285",
    cvv: "699",
    expiredate: DateTime.utc(2026, 07, 19),
    lastdigits: 7285);
