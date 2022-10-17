






import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:reasa/app/Model/chatmodel.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/home/views/Chat/chat_page.dart';
import 'package:reasa/app/modules/home/views/Chat/voice_call.dart';

class Calllisttile extends StatelessWidget {
  final Message chat;
  const Calllisttile({
    Key? key,
    required this.chat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14.w, right: 10.w),
      child: InkWell(
        onTap: () {
          Get.to(() => ChatPage(message: chat,));
        },
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.r,
            backgroundImage: AssetImage(chat.sender.image),
          ),
          title: chat.sender.name.h6(
              color: CustomColor.kgrey900,
              fontWeight: CustomFontWeight.kBoldFontWeight),
          subtitle: "2 mints ago".medium(
              color: CustomColor.kgrey700,
              fontWeight: CustomFontWeight.kMediumFontWeight),
          trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
               IconButton(
                onPressed: (){
                  Get.to(()=> VoiceCallScreen());
                },
                 icon: Icon(IconlyBold.call,
                  size: 24.sp,
                   color: CustomColor.kgrey900,
                 ),
               ),
                // SizedBox(
                //   height: 10.h,
                // ),
                // "2 mints ago".medium(
                //     color: CustomColor.kgrey700,
                //     fontWeight: CustomFontWeight.kMediumFontWeight),
              ]),
        ),
      ),
    );
  }
}
