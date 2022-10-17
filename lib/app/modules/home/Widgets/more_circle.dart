



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:reasa/app/data/constants.dart';

class MoreCircle extends StatelessWidget {
  final VoidCallback onpressed;
  const MoreCircle({
    Key? key,
    required this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        IconlyLight.more_circle,
        color: CustomColor.kgrey900,
        size: 24.sp,
      ),
      onPressed:  onpressed,
    );
  }
}
