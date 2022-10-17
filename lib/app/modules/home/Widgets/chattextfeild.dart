import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:reasa/app/data/assets_path.dart';

import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';

class ChatTextFeild extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType textInputType;
  final String hintText;
  final VoidCallback onattachpresssed;
  final VoidCallback onsmileypresssed;
  final VoidCallback oncamerapresssed;
  final Function(String) onChanged;
  ChatTextFeild({
    Key? key,
    required this.controller,
    required this.textInputType,
    required this.hintText,
    required this.oncamerapresssed,
    required this.onChanged, 
    required this.onattachpresssed, 
    required this.onsmileypresssed,
  }) : super(key: key);

  @override
  _ChatTextFeildState createState() => _ChatTextFeildState();
}

bool obsecureText = false;

class _ChatTextFeildState extends State<ChatTextFeild> {
  late FocusNode focusNode;
  @override
  void initState() {
    focusNode = FocusNode();
    focusNode.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      onChanged: widget.onChanged,
      focusNode: focusNode,
      controller: widget.controller,
      keyboardType: widget.textInputType,
      style: CustomTextStyle.kmedium.copyWith(
          color: CustomColor.kgrey900,
          fontWeight: CustomFontWeight.kSemiBoldFontWeight),
      decoration: InputDecoration(
          prefixIcon:  InkWell(
            onTap:widget.onsmileypresssed,
            child: Padding(
              padding: EdgeInsets.all(18.h),
              child: Image.asset(
                                  focusNode.hasFocus ? CustomAssets.smileblue :CustomAssets.smileblack,
                                   height: 8.h,
                                   width: 8.w,
                                   fit: BoxFit.contain,
                                 ),
            ),
          ),
             // Icon(widget.prefixicon, color: focusNode.hasFocus?CustomColor.kprimaryblue:CustomColor.kgrey900, size: 18.sp),
         suffixIcon: SizedBox(
          width: 60.w,
           child: Row(
             children: [
              InkWell(
                onTap: widget.onattachpresssed,
                child: Image.asset(
                                  focusNode.hasFocus ? CustomAssets.attachis :CustomAssets.attachgrey,
                                   height: 18.h,
                                   width: 18.w,
                                   fit: BoxFit.contain,
                                 ),
              ),
              SizedBox(width: 6.w,),
               IconButton(
                 padding: EdgeInsets.zero,
    constraints: BoxConstraints(),
                onPressed: widget.oncamerapresssed,
                 icon: Icon(
                            IconlyLight.camera,
                            size: 18.sp,
                            color: focusNode.hasFocus ? CustomColor.kprimaryblue: CustomColor.kgrey500,
                          ),
               ),
             ],
           ),
         ),
          hintText: widget.hintText,
          hintStyle: CustomTextStyle.kmedium.copyWith(
              color: CustomColor.kgrey500,
              fontWeight: CustomFontWeight.kRegularWeight),
          fillColor: focusNode.hasFocus
              ? CustomColor.kprimaryblue.withOpacity(0.1)
              : CustomColor.kgrey200,
          filled: true,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.w),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: CustomColor.kprimaryblue),
              borderRadius: BorderRadius.circular(kContRadius)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(kContRadius)),
          disabledBorder: OutlineInputBorder(
              //borderSide: BorderSide(color: CustomColor.kprimaryblue),
              borderRadius: BorderRadius.circular(kContRadius)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: CustomColor.kblack),
              borderRadius: BorderRadius.circular(kContRadius))),
      cursorColor: CustomColor.kprimaryblue,
    );
  }
}
