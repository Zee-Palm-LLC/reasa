import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:reasa/app/data/assets_path.dart';

import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Services/image_picker_services.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/custom_drop.dart';
import 'package:reasa/app/modules/home/Widgets/custom_dropdown.dart';
import 'package:reasa/app/modules/home/Widgets/custom_text_feild.dart';
import 'package:reasa/app/modules/home/Widgets/form_testfeild.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/Widgets/small_outline_button.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';
import 'package:reasa/app/modules/home/views/Auth/sign_in.dart';
import 'package:reasa/app/modules/home/views/selfy_and_face_screen/selfy_with_card.dart';

class ProfileForm extends StatefulWidget {
  ProfileForm({super.key});

  @override
  State<ProfileForm> createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  bool ischeck = false;
  var fullname = TextEditingController();
  var nickname = TextEditingController();
  var dateofbirth = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  List<String> gender = ['Male', 'Female'];
  String selectedgender = "Male" ;
  File? image;

  @override
  Widget build(BuildContext context) {
    
    return BackGroundWrapper(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(64.h),
              child: CustomAppBar(
                action: [],
                title: 'Fill Your Profile',
                leading: GetBackIcon(),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  Center(
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 70.r,
                          backgroundColor: Colors.grey.withOpacity(0.09),
                          child: image != null
                              ? ClipOval(
                                  clipBehavior: Clip.antiAlias,
                                  child: Image.file(
                                    image!,
                                    height: 200.h,
                                    width: 200.w,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              : Image.asset(
                                  CustomAssets.profileaccountpng,
                                  height: 160.h,
                                  width: 160.w,
                                  fit: BoxFit.contain,
                                ),
                        ),
                        InkWell(
                          onTap: () async {
                            File? pickedFile = await ImageService().getImage();
                            if (pickedFile != null) {
                              image = pickedFile;
                              setState(() {});
                            }
                          },
                          child: SvgPicture.asset(
                            "assets/addimage.svg",
                            height: 33.33.h,
                            width: 33.33.w,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  FormTextFeild(
                    controller: fullname,
                    textInputType: TextInputType.name,
                    hintText: "Full Name",
                    showHidePassIcon: false,
                    showCalenderIcon: false,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  FormTextFeild(
                    controller: nickname,
                    textInputType: TextInputType.name,
                    hintText: "Nick Name",
                    showHidePassIcon: false,
                    showCalenderIcon: false,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  FormTextFeild(
                    controller: dateofbirth,
                    textInputType: TextInputType.datetime,
                    hintText: "Date of Birth",
                    showHidePassIcon: false,
                    showCalenderIcon: true,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  FormTextFeild(
                    controller: emailController,
                    textInputType: TextInputType.emailAddress,
                    hintText: "Email",
                    showHidePassIcon: true,
                    showCalenderIcon: false,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.h,
                    ),
                    child: IntlPhoneField(
                      dropdownIcon: Icon(Icons.keyboard_arrow_down),
                      dropdownIconPosition: IconPosition.trailing,
                      disableLengthCheck: true,
                      initialCountryCode: '',
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
                    height: 24.h,
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
                    height: 24.h,
                  ),
                  SizedBox(
                    height: 58.h,
                    width: 380.w,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => SelfyWithCard());
                      },
                       style:  ButtonStyle(
      elevation: MaterialStateProperty.all(1),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kBigRadius)))),
                      child: "Continue".large(
                          color: CustomColor.kbackgroundwhite,
                          fontWeight: CustomFontWeight.kBoldFontWeight),
                    ),
                  ),
                ],
              ),
            )));
  }
}
