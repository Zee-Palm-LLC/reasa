



import 'package:flutter/material.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';

class SignInUpButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const SignInUpButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size(50, 30),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            alignment: Alignment.centerLeft),
        onPressed: onPressed,
        // () {
        //   Get.to(() => SignUpScreen());
        // },
        child: text.medium(
            color: CustomColor.kprimaryblue,
            fontWeight: CustomFontWeight.kBoldFontWeight));
  }
}
//"Sign up"
