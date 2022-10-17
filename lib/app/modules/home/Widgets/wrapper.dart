import 'package:flutter/material.dart';

import 'package:reasa/app/data/constants.dart';


class BackGroundWrapper extends StatelessWidget {
  final Widget child;
  const BackGroundWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.kbackgroundwhite,
      child: child,
    );
  }
}