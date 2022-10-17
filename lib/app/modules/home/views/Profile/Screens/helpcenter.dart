import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import 'package:reasa/app/Model/FaqModel.dart';
import 'package:reasa/app/Model/contactusmodel.dart';
import 'package:reasa/app/Model/resident_Model.dart';
import 'package:reasa/app/data/chip_list.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/Widgets/getback.dart';
import 'package:reasa/app/modules/home/Widgets/resident_chip.dart';
import 'package:reasa/app/modules/home/Widgets/search_textfeild.dart';
import 'package:reasa/app/modules/home/Widgets/show_menu_pop.dart';
import 'package:reasa/app/modules/home/Widgets/wrapper.dart';
import 'package:reasa/app/modules/home/views/Chat/Widgets/custom_appbar.dart';
import 'package:reasa/app/modules/home/views/Chat/chat_screen.dart';
import 'package:reasa/app/modules/home/views/Profile/Screens/customer_service.dart';
import 'package:reasa/app/modules/home/views/Profile/Widgets/bookingContainer.dart';
import 'package:reasa/app/modules/home/views/Profile/Widgets/contactlist_widget.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(64 + 41.h),
            child: AppBar(
              leading: GetBackIcon(),
              elevation: 0,
              actions: [
                IconButton(
                  icon: Icon(
                    IconlyLight.more_circle,
                    size: 24.sp,
                    color: CustomColor.kgrey900,
                  ),
                  onPressed: () {
                      ShowMenuPop(context);
                  },
                ),
              ],
              backgroundColor: CustomColor.kbackgroundwhite,
              title: "Help Center".h4(
                  color: CustomColor.kgrey900,
                  fontWeight: CustomFontWeight.kBoldFontWeight),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(41.h),
                child: CustomTabBar(
                  text1: 'FAQ',
                  text2: 'Contact Us',
                ),
              ),
            )),
        body: TabBarView(
          children: [
            FAQ(),

            // Expanded(
            //     child: ListView.builder(
            //       padding: EdgeInsets.all( 24.h,),
            //   itemCount: 1,
            //   itemBuilder: (BuildContext context, int index) {
            //     return   BookingContainer(resident: featuredresidents[0],);
            //   },
            // )),
            Column(
              children: [
                Expanded(
                    child: ListView.separated(
                  padding: EdgeInsets.symmetric(
                    vertical: 24.h,
                    horizontal: 24.w,
                  ),
                  itemCount: contactlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ContactUs(
                      contact: contactlist[index],
                      onpressed: () {
                        Get.to(() => CustomerServiceChat());
                      },
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 24.h,
                    );
                  },
                )),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

class FAQ extends StatelessWidget {
  FAQ({
    Key? key,
  }) : super(key: key);
  var search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 20.w,
            top: 16.h,
          ),
          child: FacilitiesChip(
            chiplist: helpchiplist,
            onextratoggele: (int) {},
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 24.w,
            right: 24,
            top: 16.h,
          ),
          child: SearchTextFeild(
            controller: search,
            textInputType: TextInputType.multiline,
            hintText: "Search",
            showHidePassIcon: false,
            showCalenderIcon: false,
            prefixicon: IconlyLight.search,
            onsuffexpresssed: () {},
            onChanged: (String) {},
          ),
        ),
        Expanded(
            child: ListView.separated(
          padding: EdgeInsets.symmetric(
            vertical: 24.h,
            horizontal: 24.w,
          ),
          itemCount: faqlist.length,
          itemBuilder: (BuildContext context, int index) {
            return ExpansionContainer(
              faq: faqlist[index],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 24.h,
            );
          },
        )),
      ],
    );
  }
}

class ExpansionContainer extends StatefulWidget {
  final FaqModel faq;
  const ExpansionContainer({
    Key? key,
    required this.faq,
  }) : super(key: key);

  @override
  State<ExpansionContainer> createState() => _ExpansionContainerState();
}

class _ExpansionContainerState extends State<ExpansionContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          setState(() {
            widget.faq.state = !widget.faq.state;
          });
        },
        child: widget.faq.state
            ? Container(
                height: 164.h,
                width: 380.w,
                decoration: BoxDecoration(
                  boxShadow: boxshadow,
                  color: CustomColor.kbackgroundwhite,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 24.h,
                      ),
                      Row(
                        children: [
                          widget.faq.question.h6(
                              color: CustomColor.kgrey900,
                              fontWeight: CustomFontWeight.kBoldFontWeight),
                          Spacer(),
                          Icon(
                            IconlyBold.arrow_down_2,
                            color: CustomColor.kprimaryblue,
                            size: 24.sp,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 380.w,
                        child: Divider(
                          color: CustomColor.kgrey200,
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      SizedBox(
                        width: 332,
                        child: widget.faq.ans.medium(
                            color: CustomColor.kgrey800,
                            fontWeight: CustomFontWeight.kMediumFontWeight),
                      ),
                    ],
                  ),
                ),
              )
            : Container(
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
                      widget.faq.question.h6(
                          color: CustomColor.kgrey900,
                          fontWeight: CustomFontWeight.kBoldFontWeight),
                      Spacer(),
                      Icon(
                        IconlyBold.arrow_down_2,
                        color: CustomColor.kprimaryblue,
                        size: 24.sp,
                      ),
                    ],
                  ),
                ),
              ));
  }
}
