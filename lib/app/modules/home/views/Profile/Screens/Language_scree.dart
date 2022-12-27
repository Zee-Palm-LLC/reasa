import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reasa/app/Model/languageModel.dart';

import 'package:reasa/app/Model/setting_notification.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(64.h),
              child: CustomAppBar(
                action: [],
                title: 'Language',
                leading: GetBackIcon(),
              ),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.w),
                  child: "Suggested".h5(
                      color: CustomColor.kgrey900,
                      fontWeight: CustomFontWeight.kBoldFontWeight),
                ),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      if (index == 2) {
                        return Padding(
                          padding: EdgeInsets.only(left: 24.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 380.w,
                                child: Divider(
                                  color: CustomColor.kgrey200,
                                ),
                              ),
                              "Language".h5(
                                  color: CustomColor.kgrey900,
                                  fontWeight: CustomFontWeight.kBoldFontWeight),
                                SizedBox(height: 10.h,),
                            ],
                          ),
                        );
                      }
                      return LanguageRadioListTile(
                        value: index,
                        card: language[index],
                        groupvalue: value,
                        onchanged: (int? index) {
                          setState(() {
                            value = index!;
                          });
                        },
                      );
                    },
                    itemCount: language.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                          //height: 40.h,
                          );
                    },
                  ),
                )
              ],
            )));
  }
}

class LanguageRadioListTile extends StatelessWidget {
  final LanguageModel card;
  final int value;
  final int groupvalue;
  final Function(int?) onchanged;
  const LanguageRadioListTile({
    Key? key,
    required this.card,
    required this.value,
    required this.groupvalue,
    required this.onchanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: RadioListTile(
      
         
        contentPadding: EdgeInsets.zero,
        activeColor: CustomColor.kprimaryblue,
        controlAffinity: ListTileControlAffinity.trailing,
        title: card.language.xl(
            color: CustomColor.kgrey900,
            fontWeight: CustomFontWeight.kSemiBoldFontWeight),
        value: value,
        groupValue: groupvalue,
        onChanged: onchanged,
      ),
    );
  }
}
