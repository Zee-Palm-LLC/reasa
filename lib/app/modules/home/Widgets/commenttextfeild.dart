import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CommentTextFeild extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType textInputType;
  final String hintText;
  CommentTextFeild(
      {Key? key,
      required this.controller,
      required this.textInputType,
      required this.hintText,
      
      })
      : super(key: key);

  @override
  _CommentTextFeildState createState() => _CommentTextFeildState();
}


class _CommentTextFeildState extends State<CommentTextFeild> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
      child: TextField(
        minLines: 1, // <-- SEE HERE
  maxLines: 5, 
         // expands: true,
        controller: widget.controller,
        keyboardType: widget.textInputType,
        style: CustomTextStyle.kmedium.copyWith( color: CustomColor.kgrey900, fontWeight: CustomFontWeight.kSemiBoldFontWeight),
        decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: CustomTextStyle.kmedium.copyWith( color: CustomColor.kgrey500, fontWeight: CustomFontWeight.kRegularWeight),
            fillColor: CustomColor.kgrey50,
            filled: true,
            
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.w),
           focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(kContRadius)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(kContRadius)),
          disabledBorder: OutlineInputBorder(
              //borderSide: BorderSide(color: CustomColor.kprimaryblue),
              borderRadius: BorderRadius.circular(kContRadius)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              //borderRadius: BorderRadius.circular(kContRadius)
              )
              ),
        cursorColor: CustomColor.kprimaryblue,
      ),
    );
  }
}