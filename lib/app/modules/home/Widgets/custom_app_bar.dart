
import 'package:flutter/material.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';



class CustomAppBar extends StatelessWidget{
  final Widget leading;
  final String title;
  final List<Widget> action;
  const CustomAppBar({
    Key? key,
    required this.leading, required this.title, required this.action,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      elevation: 0,

      actions: action,

      //centerTitle: true,
      backgroundColor: CustomColor.kbackgroundwhite,
      title: title.h4(
                      color: CustomColor.kgrey900,
                      fontWeight: CustomFontWeight.kBoldFontWeight), 
      
      // Text(title,
      //   style: CustomTextStyle.kheading3.copyWith(fontWeight: CustomFontWeight.kBoldFontWeight,color: CustomColor.kbackgroundwhite ),
      // ),
      
      );


  }
}
