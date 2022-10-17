

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:reasa/app/data/constants.dart';

class CustomSwitch extends StatelessWidget {
  final bool value;
  final Function(bool) ontoggle;
  const CustomSwitch({
    Key? key,
    required this.value,
    required this.ontoggle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      activeColor: CustomColor.kprimaryblue,
      inactiveColor: CustomColor.kgrey200,
      width: 44.w,
      height: 24.h,
      toggleSize: 22.0,
      value: value,
      borderRadius: 30.0,
      padding: 2.0,
      showOnOff: false,
      onToggle: ontoggle,
    );
    
  }
}