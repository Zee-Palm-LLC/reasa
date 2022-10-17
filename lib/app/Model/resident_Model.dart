import 'package:flutter/cupertino.dart';
import 'package:reasa/app/data/assets_path.dart';

class Resident {
  String image;
  String name;
  String city;
  String countrytag;
  double rating;
  String description;
  double prize;
  String perdayNight;
  bool favourite;
  Resident({
    required this.image,
    required this.name,
    required this.city,
    required this.countrytag,
    required this.rating,
    required this.description,
    required this.prize,
    required this.perdayNight,
    required this.favourite,
  });
}

List<Resident> featuredresidents = [modernica,merialla];
List<Resident> recommendedresidents = [grandmansion,alphahousing,millhouse, asstute,whiteCottage,carraigehouse,meadowview,sweetVilla];
List<Resident> favouriteresidents = [twoappart,eastside,heartandsoul,licky];

Resident modernicafull = Resident(
  image: CustomAssets.modernica,
  city: 'New York',
  rating: 4.8,
  prize: 29,
  perdayNight: 'night',
  name: 'Modernica\nApartment',
  favourite: false,
  description: '',
  countrytag: ' US',
);

Resident modernica = Resident(
  image: CustomAssets.modernica,
  city: 'New York',
  rating: 4.8,
  prize: 29,
  perdayNight: 'night',
  name: 'Modernica Apartme...',
  favourite: false,
  description: '',
  countrytag: ' US',
);

Resident merialla = Resident(
  image: CustomAssets.merialla,
  city: 'Paris',
  rating: 4.6,
  prize: 32,
  perdayNight: 'night',
  name: 'Merialla Villa',
  favourite: false,
  description: '',
  countrytag: 'France',
);

Resident grandmansion = Resident(
  image: CustomAssets.lagrand,
  city: 'Tokyo',
  rating: 4.7,
  prize: 36,
  perdayNight: 'night',
  name: 'La Grand Maison',
  favourite: false,
  description: '',
  countrytag: 'Japan',
);

Resident alphahousing = Resident(
  image: CustomAssets.alphahouse,
  city: 'Delhi',
  rating: 4.2,
  prize: 28,
  perdayNight: 'night',
  name: 'Alpha Housing',
  favourite: false,
  description: '',
  countrytag: 'India',
);

Resident millhouse = Resident(
  image: CustomAssets.millhouse,
  city: 'Shanghai',
  rating: 4.6,
  prize: 25,
  perdayNight: 'night',
  name: 'Mill House',
  favourite: false,
  description: '',
  countrytag: 'China',
);

Resident asstute = Resident(
  image: CustomAssets.astutue,
  city: 'Sau Paulo',
  rating: 4.3,
  prize: 32,
  perdayNight: 'night',
  name: 'Astute Homes',
  favourite: false,
  description: '',
  countrytag: 'Brazil',
);

Resident whiteCottage = Resident(
  image: CustomAssets.whitecottage,
  city: 'London',
  rating: 4.3,
  prize: 32,
  perdayNight: 'night',
  name: 'White Cottage',
  favourite: false,
  description: '',
  countrytag: 'UK ',
);

Resident carraigehouse = Resident(
  image: CustomAssets.carraigehouse,
  city: 'Osaka',
  rating: 4.0,
  prize: 27,
  perdayNight: 'night',
  name: 'Carriage House',
  favourite: false,
  description: '',
  countrytag: 'Japan ',
);

Resident meadowview = Resident(
  image: CustomAssets.meadowgroup,
  city: 'Washington',
  rating: 4.7,
  prize: 29,
  perdayNight: 'night',
  name: 'Meadow View',
  favourite: false,
  description: '',
  countrytag: 'US',
);

Resident sweetVilla = Resident(
  image: CustomAssets.sweatvilla,
  city: 'London',
  rating: 4.8,
  prize: 26,
  perdayNight: 'night',
  name: 'Sweet Villa',
  favourite: false,
  description: '',
  countrytag: 'Uk',
);

Resident twoappart = Resident(
  image: CustomAssets.meadowgroup,
  city: 'Osaka',
  rating: 4.0,
  prize: 27,
  perdayNight: 'night',
  name: 'Merialla Villa',
  favourite: true,
  description: '',
  countrytag: 'Japan',
);

Resident heartandsoul = Resident(
  image: CustomAssets.whitecottage,
  city: 'London',
  rating: 4.1,
  prize: 30,
  perdayNight: 'night',
  name: 'White Cottage',
  favourite: true,
  description: '',
  countrytag: 'Uk',
);

Resident licky = Resident(
  image: CustomAssets.alphahouse,
  city: 'New Delhi',
  rating: 4.2,
  prize: 28,
  perdayNight: 'night',
  name: 'Alpha Housing',
  favourite: true,
  description: '',
  countrytag: 'India',
);

Resident eastside = Resident(
  image: CustomAssets.sweatvilla,
  city: 'Tokyo',
  rating: 4.7,
  prize: 36,
  perdayNight: 'night',
  name: 'Meadow View',
  favourite: true,
  description: '',
  countrytag: 'Japan',
);
