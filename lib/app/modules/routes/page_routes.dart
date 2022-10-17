import 'package:flutter/material.dart';
import 'package:reasa/app/modules/home/views/Chat/chat_screen.dart';
import 'package:reasa/app/modules/home/views/Favourite/favourite_Screen.dart';
import 'package:reasa/app/modules/home/views/Map/map_screen.dart';
import 'package:reasa/app/modules/home/views/Profile/Screens/profile_screen.dart';
import 'package:reasa/app/modules/home/views/homepage/homepage_screen.dart';
import 'package:reasa/app/modules/home/views/search/search.dart';

import '../home/views/homepage/raw.dart';


List page =  [
  Homepage(),
  MapScreen(),
  FavouriteScreen(),
  ChatScreen(),
  ProfileScreen(),
];
