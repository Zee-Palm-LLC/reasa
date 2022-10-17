import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import 'package:reasa/app/Model/card_model.dart';

import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/modules/home/Widgets/custom_app_bar.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';
import 'package:reasa/app/modules/home/views/Profile/Widgets/continue_bottom_sheet.dart';
import 'package:reasa/app/modules/home/views/Profile/Widgets/paymentcardwidget.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: Scaffold(
      bottomSheet: ContinueBottomScheet(onContinue: () {}),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(64.h),
        child: CustomAppBar(
          action: [
            IconButton(
              icon: Icon(
                IconlyLight.more_circle,
                color: CustomColor.kgrey900,
                size: 24.sp,
              ),
              onPressed: () {},
            )
          ],
          title: 'Payments',
          leading: GetBackIcon(),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 24.h),
          Expanded(
              child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return PaymentCardWidget(card: cards[index],);
            }, 
            itemCount: cards.length,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 24.h,
              );
            },
          )),
        ],
      ),
    ));
  }
}

