import 'package:flutter/widgets.dart';

import 'package:reasa/app/data/assets_path.dart';

class ReviewModel {
  String image;
  String name;
  int star;
  String time;
  String description;
  bool isLike;
  int likes;
  ReviewModel({
    required this.image,
    required this.name,
    required this.star,
    required this.time,
    required this.description,
    required this.isLike,
    required this.likes,
  });
}

ReviewModel hanlin = ReviewModel(
  image: CustomAssets.charalett,
  name: 'Charolette Hanlin',
  star: 5,
  time: '6 days ago',
  isLike: true,
  description:
      'The apartment is great! My family likes it very much. I highly recommend it for people 👍', likes: 938,
);

ReviewModel darron = ReviewModel(
  image: CustomAssets.darron,
  name: 'Darron Kulikowski',
  star: 4,
  time: '2 weeks ago ',
  isLike: false,
  description:
      'The apartment is great! My family likes it very much. I highly recommend it for people 👍', likes: 863,
);

ReviewModel lauralee = ReviewModel(
  image: CustomAssets.lauratee,
  name: 'Lauralee Quintero',
  star: 4,
  time: '2 weeks ago',
  isLike: true,
  description:
      'Amazing apartment! Especially I really like the design of the bathroom, it makes me feel more at home and don\'t want to go out 🤣🤣', likes: 629,
);

ReviewModel aileen = ReviewModel(
  image: CustomAssets.ailee,
  name: 'Aileen Fullbright',
  star: 5,
  time: '3 weeks ago',
  isLike: false,
  description:
      'This is one of the best apartments I\'ve ever had. Affordable prices with quality services and complete facilities 🤩🤩', likes: 553,
);

ReviewModel rodolfo = ReviewModel(
  image: CustomAssets.rodalfo,
  name: 'Rodolfo Goode',
  star: 4,
  time: '2 days ago',
  isLike: false,
  description:
      "The apartment is very nice, clean and modern. I really like the interior design. Looks like I'll feel at home 🔥", likes: 234,
);

List<ReviewModel> reviewlist = [ hanlin,darron,lauralee,aileen,rodolfo ];

