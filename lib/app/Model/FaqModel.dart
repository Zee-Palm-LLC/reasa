import 'package:flutter/widgets.dart';

import 'package:reasa/app/data/assets_path.dart';

class FaqModel {
  bool state;
  String ans;
  String question;

  FaqModel({
    required this.state,
    required this.ans,
    required this.question,
  });
}

List<FaqModel> faqlist = [
  whatisreasa,
  payment,
  cancelbooing,
  deleteaccount,
  exitapp,
];

FaqModel whatisreasa = FaqModel(
  question: "What is Reasa?",
  ans:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", state: false,
);

FaqModel payment = FaqModel(
  state: false,
  question: "How to make a payment?",
  ans:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
);

FaqModel cancelbooing = FaqModel(
  state: false,
  question: "How do I can cancel booking?",
  ans:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
);

FaqModel deleteaccount = FaqModel(
  state: false,
  question: "How do I can delete my account?",
  ans:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
);

FaqModel exitapp = FaqModel(
  state: false,
  question: "How do I exit the app?",
  ans:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
);
