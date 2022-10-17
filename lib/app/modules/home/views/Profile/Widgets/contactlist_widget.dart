import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reasa/app/Model/contactusmodel.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';

class ContactUs extends StatelessWidget {
  final ContactUsModel contact;
  final VoidCallback onpressed;
  const ContactUs({
    Key? key,
    required this.contact, required this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Container(
        height: 72.h,
        width: 380.w,
        decoration: BoxDecoration(
          boxShadow: boxshadow,
          color: CustomColor.kbackgroundwhite,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Row(
            children: [
              Image.asset(
                contact.image,
                height: 24.h,
                width: 24.w,
                fit: BoxFit.contain,
              ),
              SizedBox(
                width: 16.w,
              ),
              contact.name.xl(
                  color: CustomColor.kgrey900,
                  fontWeight: CustomFontWeight.kBoldFontWeight),
              Spacer(),
              SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
