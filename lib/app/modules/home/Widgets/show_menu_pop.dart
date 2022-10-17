


 import 'package:flutter/material.dart';

Future<String?> ShowMenuPop(BuildContext context) {
    return showMenu<String>(
    context: context,
    position: RelativeRect.fromLTRB(25.0, 25.0, 0.0, 0.0),  //position where you want to show the menu on screen
    items: [
      PopupMenuItem<String>(
          child: const Text('Options'), value: '1'),
      // PopupMenuItem<String>(
      //     child: const Text('menu option 2'), value: '2'),
      // PopupMenuItem<String>(
      //     child: const Text('menu option 3'), value: '3'),
    ],
    elevation: 8.0,

 
  );
  }

