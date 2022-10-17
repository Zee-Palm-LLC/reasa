import 'package:reasa/app/data/assets_path.dart';

class User {
  int id;
  String name;
  String image;
  User({
    required this.id,
    required this.name,
    required this.image,
  });
}

List<User> userlist = [angelina,rohan,alfonzo,anguestina,rodalfo,tanner,ordonez,dorrance,clinton];



User currentuser = User(
  id: 0,
  name: 'currentuser',
  image: CustomAssets.charalett,
);

User angelina = User(
  id: 1,
  name: 'Lauralee Quintero',
  image: CustomAssets.charalett,
);
User rohan = User(
  id: 2,
  name: "Annabel Rohan",
  image: CustomAssets.natprofile,
);
User alfonzo = User(
  id: 3,
  name: "Alfonzo Schuessler",
  image: CustomAssets.lauratee,
);
User anguestina = User(
  id: 4,
  name: "Augustina Midgett",
  image: CustomAssets.ailee,
);
User rodalfo = User(
  id: 5,
  name: "Freida Varnes",
  image: CustomAssets.rodalfo,
);
User tanner =
    User(id: 6, name: 'Tanner Stafford', image: CustomAssets.charalett);
User ordonez =
    User(id: 7, name: 'Sanjuanita Ordonez', image: CustomAssets.rodalfo);
User dorrance =
    User(id: 8, name: 'Florencio Dorrance', image: CustomAssets.natprofile);
User clinton = User(id: 9, name: 'Clinton Mcclure', image: CustomAssets.ailee);
