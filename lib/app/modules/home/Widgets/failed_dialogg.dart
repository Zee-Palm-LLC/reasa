import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:reasa/app/data/assets_path.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';

class FailedDialog extends StatelessWidget {
  final VoidCallback onViewErecipt;
  final VoidCallback oncancel;

  const FailedDialog({
    Key? key,
    required this.onViewErecipt,
    required this.oncancel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kdialogradius),
      ),
      actions: [
        Container(
          height: 555.h,
          width: 340.w,
          decoration: BoxDecoration(
            color: CustomColor.kbackgroundwhite,
            borderRadius: BorderRadius.circular(kdialogradius),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              Image.asset(
                CustomAssets.failedalert,
                height: 180.h,
                width: 185.93.w,
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 32.h,
              ),
              "Oops, Failed!".h4(
                  color: CustomColor.kalertpink,
                  fontWeight: CustomFontWeight.kBoldFontWeight),
              SizedBox(
                height: 16.h,
              ),
              "Your payment failed.\nPlease check your internet connection\nthen try again."
                  .large(
                color: CustomColor.kgrey900,
                fontWeight: CustomFontWeight.kRegularWeight,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 32.h,
              ),
              SizedBox(
                height: 58.h,
                width: 276.w,
                child: ElevatedButton(
                  onPressed: onViewErecipt,
                  child: "Try Again".large(
                      color: CustomColor.kbackgroundwhite,
                      fontWeight: CustomFontWeight.kBoldFontWeight),
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(1),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        CustomColor.kprimaryblue),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(kBigRadius))),
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              SizedBox(
                height: 58.h,
                width: 276.w,
                child: ElevatedButton(
                  onPressed: oncancel,
                  child: "Cancel".large(
                      color: CustomColor.kprimaryblue,
                      fontWeight: CustomFontWeight.kBoldFontWeight),
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(1),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        CustomColor.kprimaryblue100),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(kBigRadius))),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

Future<void> showFailedDialog(onCancel, onViewErecipt) async {
  await Get.dialog(FailedDialog(oncancel: onCancel, onViewErecipt: onViewErecipt,), barrierDismissible: true);
}

void dismissLoadingDialog() {
  Get.back();
}
