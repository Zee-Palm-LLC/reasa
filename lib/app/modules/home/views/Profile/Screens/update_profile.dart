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
import 'package:reasa/app/modules/home/Widgets/congrats_transatioc_dialog.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/custom_drop.dart';
import 'package:reasa/app/modules/home/Widgets/failed_dialogg.dart';
import 'package:reasa/app/modules/home/Widgets/form_testfeild.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';
import 'package:reasa/app/modules/home/views/booking/book_real_state.dart';
import 'package:reasa/app/modules/home/views/selfy_and_face_screen/selfy_with_card.dart';

class UpdateProfileScreen extends StatefulWidget {
  UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() =>
      _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
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
  String currentimage = "";
  File? image;

  @override
  void initState() {
    fullname.text = 'Andrew Ainsley';
    nickname.text = 'Andrew';
    dateofbirth.text = '12/27/1995';
    emailController.text = 'andrew_ainsley@yourdomain.com';
    phoneController.text = '111 467 378 399';
    currentimage = CustomAssets.profilepic;
     


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
                title: 'Profile',
                leading: GetBackIcon(),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 24.h,
                  ),
                  Center(
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 60.r,
                          backgroundColor: Colors.grey.withOpacity(0.09),
                          backgroundImage: AssetImage(CustomAssets.profilepic),
                          // child:
                          //  image != null
                          //     ? ClipOval(
                          //         clipBehavior: Clip.antiAlias,
                          //         child: Image.file(
                          //           image!,
                          //           height: 200.h,
                          //           width: 200.w,
                          //           fit: BoxFit.cover,
                          //         ),
                          //       )
                          //     : Image.asset(
                          //         "",
                          //         height: 160.h,
                          //         width: 160.w,
                          //         fit: BoxFit.contain,
                          //       ),
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
                    height: 24.h,
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
                    height: 22.h,
                  ),
                  SizedBox(
                    height: 58.h,
                    width: 360.w,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => BookRealState());
                      },
                      child: "Update".large(
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
