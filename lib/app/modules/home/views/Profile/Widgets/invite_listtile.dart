


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reasa/app/Model/invite_model.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';

class InviteListTile extends StatefulWidget {
  final InviteModel invites;
  const InviteListTile({
    Key? key,
    required this.invites,
  }) : super(key: key);

  @override
  State<InviteListTile> createState() => _InviteListTileState();
}

class _InviteListTileState extends State<InviteListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: ListTile(
        leading: CircleAvatar(
          radius: 25.r,
          backgroundImage: AssetImage(widget.invites.image),
        ),
        title: widget.invites.name.h6(
            color: CustomColor.kgrey900,
            fontWeight: CustomFontWeight.kBoldFontWeight),
        subtitle: widget.invites.phonenumber.medium(
            color: CustomColor.kgrey700,
            fontWeight: CustomFontWeight.kMediumFontWeight),
        trailing: InkWell(
          onTap: () {
            setState(() {
              widget.invites.isInvited = !widget.invites.isInvited;
            });
          },
          child: widget.invites.isInvited
              ? Container(
                  height: 32.h,
                  width: 77.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: CustomColor.kprimaryblue),
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: Center(
                      child: "Invited".medium(
                    color: CustomColor.kprimaryblue,
                    fontWeight: CustomFontWeight.kSemiBoldFontWeight,
                  )))
              : Container(
                  height: 32.h,
                  width: 68.w,
                  decoration: BoxDecoration(
                    color: CustomColor.kprimaryblue,
                    //border: Border.all(color: CustomColor.kprimaryblue),
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: Center(
                      child: "Invite".medium(
                    color: CustomColor.kbackgroundwhite,
                    fontWeight: CustomFontWeight.kSemiBoldFontWeight,
                  ))),
        ),
      ),
    );
  }
}
