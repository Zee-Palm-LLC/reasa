import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/congrats_transatioc_dialog.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/custom_drop.dart';
import 'package:reasa/app/modules/home/Widgets/failed_dialogg.dart';
import 'package:reasa/app/modules/home/Widgets/form_testfeild.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';
import 'package:reasa/app/modules/home/views/booking/book_real_state.dart';
import 'package:reasa/app/modules/home/views/selfy_and_face_screen/selfy_with_card.dart';

class InformationDetailScreen extends StatefulWidget {
  InformationDetailScreen({super.key});

  @override
  State<InformationDetailScreen> createState() =>
      _InformationDetailScreenState();
}

class _InformationDetailScreenState extends State<InformationDetailScreen> {
  bool ischeck = false;
  var fullname = TextEditingController();
  var nickname = TextEditingController();
  var dateofbirth = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  List<String> gender = ['Male', 'Female'];
  String selectedgender = "Male";
  List<String> countrylist = ['United States', 'Paistan', 'UK'];
  String selectedcountry = 'United States';

  @override
  void initState() {
    fullname.text = 'Andrew Ainsley';
    nickname.text = 'Andrew';
    dateofbirth.text = '12/27/1995';
    emailController.text = 'andrew_ainsley@yourdomain.com';
    phoneController.text = '111 467 378 399';

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(64.h),
              child: CustomAppBar(
                action: [],
                title: 'Book Real Estate',
                leading: GetBackIcon(),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 170.w),
                    child: "Your Information Details".h5(
                        color: CustomColor.kgrey900,
                        fontWeight: CustomFontWeight.kBoldFontWeight),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FormTextFeild(
                    controller: fullname,
                    textInputType: TextInputType.name,
                    hintText: "Full Name",
                    showHidePassIcon: false,
                    showCalenderIcon: false,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  FormTextFeild(
                    controller: nickname,
                    textInputType: TextInputType.name,
                    hintText: "Nick Name",
                    showHidePassIcon: false,
                    showCalenderIcon: false,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 60.h,
                    width: 380.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kContRadius),
                        color: CustomColor.kgrey50),
                    child: Center(
                      child: Padding(
                         padding: EdgeInsets.only(left: 20.w, right: 14.w),
                        child: DropDownCustom(
                          value: selectedgender,
                          OnChanged: (String? value) {
                            setState(() {
                              selectedgender = value!;
                            });
                          },
                          items: gender.map((String items) {
                            return DropdownMenuItem(
                                value: items,
                                child: Text(items,
                                    style: CustomTextStyle.kmedium.copyWith(
                                      color: CustomColor.kgrey900,
                                      fontWeight:
                                          CustomFontWeight.kSemiBoldFontWeight,
                                    )));
                          }).toList(),
                          hint: 'Select Gender',
                          hintenable: true,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  FormTextFeild(
                    controller: dateofbirth,
                    textInputType: TextInputType.datetime,
                    hintText: "Date of Birth",
                    showHidePassIcon: false,
                    showCalenderIcon: true,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  FormTextFeild(
                    controller: emailController,
                    textInputType: TextInputType.emailAddress,
                    hintText: "Email",
                    showHidePassIcon: true,
                    showCalenderIcon: false,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.h,
                    ),
                    child: IntlPhoneField(
                      dropdownIcon: Icon(Icons.keyboard_arrow_down),
                      dropdownIconPosition: IconPosition.trailing,
                      disableLengthCheck: true,
                      initialCountryCode: 'USA',
                      showDropdownIcon: true,
                      flagsButtonPadding: EdgeInsets.only(left: 20.w),
                      decoration: InputDecoration(
                          hintText: "000 000 0000",
                          hintStyle: CustomTextStyle.kmedium.copyWith(
                              color: CustomColor.kgrey500,
                              fontWeight: CustomFontWeight.kRegularWeight),
                          fillColor: CustomColor.kgrey50,
                          filled: true,
                          errorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: CustomColor.kprimaryblue),
                              borderRadius: BorderRadius.circular(kContRadius)),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 15.w),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: CustomColor.kprimaryblue),
                              borderRadius: BorderRadius.circular(kContRadius)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(kContRadius)),
                          disabledBorder: OutlineInputBorder(
                              //borderSide: BorderSide(color: CustomColor.kprimaryblue),
                              borderRadius: BorderRadius.circular(kContRadius)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: CustomColor.kblack),
                              borderRadius:
                                  BorderRadius.circular(kContRadius))),
                      onChanged: (phone) {
                        phoneController.text = phone.completeNumber;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 60.h,
                    width: 380.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kContRadius),
                        color: CustomColor.kgrey50),
                    child: Center(
                      child: Padding(
                         padding: EdgeInsets.only(left: 20.w, right: 14.w),
                        child: DropDownCustom(
                          value: selectedcountry,
                          OnChanged: (String? value) {
                            setState(() {
                              selectedcountry = value!;
                            });
                          },
                          items: countrylist.map((String items) {
                            return DropdownMenuItem(
                                value: items,
                                child: Text(items,
                                    style: CustomTextStyle.kmedium.copyWith(
                                      color: CustomColor.kgrey900,
                                      fontWeight:
                                          CustomFontWeight.kSemiBoldFontWeight,
                                    )));
                          }).toList(),
                          hint: '',
                          hintenable: true,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  SizedBox(
                    height: 58.h,
                    width: 360.w,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => BookRealState());
                      },
                      child: "Continue".large(
                          color: CustomColor.kbackgroundwhite,
                          fontWeight: CustomFontWeight.kBoldFontWeight),
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(kBigRadius)))),
                    ),
                  ),
                ],
              ),
            )));
  }
}
