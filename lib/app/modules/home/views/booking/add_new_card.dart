import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:reasa/app/Model/card_model.dart';
import 'package:reasa/app/data/assets_path.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/form_testfeild.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';
import 'package:reasa/app/modules/home/views/Auth/pin_screen.dart';
import 'package:reasa/app/modules/home/views/booking/Enter_pin_screen.dart';

class AddNewCard extends StatelessWidget {
  AddNewCard({super.key});

  var fullname = TextEditingController();
  var cardnumber = TextEditingController();
  var dateofbirth = TextEditingController();
  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(48.h),
              child: CustomAppBar(
                action: [
                  IconButton(
                    icon: Icon(
                      IconlyLight.scan,
                      color: CustomColor.kgrey900,
                      size: 24.sp,
                    ),
                    onPressed: () {},
                  )
                ],
                title: 'Add New Card',
                leading: GetBackIcon(),
              ),
            ),
            body: SingleChildScrollView(
                child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 24.h),
                    child: Image.asset(
                      CustomAssets.masscard,
                      height: 239.h,
                      width: double.infinity,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24.w, bottom: 12.h),
                    child: "Card Name".xl(
                        color: CustomColor.kgrey900,
                        fontWeight: CustomFontWeight.kBoldFontWeight,
                        textAlign: TextAlign.center),
                  ),
                  Center(
                    child: FormTextFeild(
                      controller: fullname,
                      textInputType: TextInputType.name,
                      hintText: "Full Name",
                      showHidePassIcon: false,
                      showCalenderIcon: false,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 24.h, left: 24.w, bottom: 12.h),
                    child: "Card Number".xl(
                        color: CustomColor.kgrey900,
                        fontWeight: CustomFontWeight.kBoldFontWeight,
                        textAlign: TextAlign.center),
                  ),
                  Center(
                    child: FormTextFeild(
                      controller: fullname,
                      textInputType: TextInputType.name,
                      hintText: "2672 4738 7837 7285",
                      showHidePassIcon: false,
                      showCalenderIcon: false,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 24.h,
                      left: 24.w,
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 12.h),
                              child: "Expiry Date".xl(
                                  color: CustomColor.kgrey900,
                                  fontWeight: CustomFontWeight.kBoldFontWeight,
                                  textAlign: TextAlign.center),
                            ),
                            SizedBox(
                              width: 180.w,
                              child: FormTextFeild(
                                controller: fullname,
                                textInputType: TextInputType.name,
                                hintText: "Expire date",
                                showHidePassIcon: false,
                                showCalenderIcon: true,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 12.h),
                              child: "CVV".xl(
                                  color: CustomColor.kgrey900,
                                  fontWeight: CustomFontWeight.kBoldFontWeight,
                                  textAlign: TextAlign.center),
                            ),
                            SizedBox(
                              width: 180.w,
                              child: FormTextFeild(
                                controller: fullname,
                                textInputType: TextInputType.name,
                                hintText: "CVV",
                                showHidePassIcon: false,
                                showCalenderIcon: false,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 98.h,
                  ),
                  Center(
                    child: SizedBox(
                      height: 58.h,
                      width: 348.w,
                      child: ElevatedButton(
                        onPressed: () {
                          cards.add(CardModel(
                              image: CustomAssets.mastercard,
                              cardname: "•••• •••• •••• •••• 4679",
                              cardnumber: "",
                              cvv: "555",
                              expiredate: DateTime.utc(2026, 07, 19),
                              lastdigits: 789));
                          Get.back();
                          //  Get.to(
                          //  // ()=>EnterPinScreen()
                          //   );
                        },
                        child: "Add".large(
                            color: CustomColor.kbackgroundwhite,
                            fontWeight: CustomFontWeight.kBoldFontWeight),
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(1),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(kBigRadius))),
                        ),
                      ),
                    ),
                  )
                ]))));
  }
}
