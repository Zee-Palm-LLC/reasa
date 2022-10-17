import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';

import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';

class SearchTextFeild extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType textInputType;
  final String hintText;
  final bool showHidePassIcon;
  final bool showCalenderIcon;
  final IconData prefixicon;
  final VoidCallback onsuffexpresssed;
  final Function(String) onChanged;
  SearchTextFeild({
    Key? key,
    required this.controller,
    required this.textInputType,
    required this.hintText,
    required this.showHidePassIcon,
    required this.showCalenderIcon,
    required this.prefixicon,
    required this.onsuffexpresssed,
    required this.onChanged,
  }) : super(key: key);

  @override
  _SearchTextFeildState createState() => _SearchTextFeildState();
}

bool obsecureText = false;

class _SearchTextFeildState extends State<SearchTextFeild> {
  late FocusNode focusNode;
  @override
  void initState() {
    focusNode = FocusNode();
    focusNode.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      onChanged: widget.onChanged,
      focusNode: focusNode,
      controller: widget.controller,
      keyboardType: widget.textInputType,
      style: CustomTextStyle.kmedium.copyWith(
          color: CustomColor.kgrey900,
          fontWeight: CustomFontWeight.kSemiBoldFontWeight),
      decoration: InputDecoration(
          prefixIcon:
              Icon(widget.prefixicon, color: focusNode.hasFocus?CustomColor.kprimaryblue:CustomColor.kgrey400, size: 18.sp),
         suffixIcon: IconButton(
          onPressed: widget.onsuffexpresssed,
           icon: Icon(
                      IconlyLight.filter,
                      size: 18.sp,
                      color: CustomColor.kprimaryblue,
                    ),
         ),
          //     ? obsecureText
          //         ? InkWell(
          //             onTap: () {
          //               setState(() {
          //                 obsecureText = !obsecureText;
          //               });
          //             },
          //             child: Icon(Icons.visibility_outlined,
          //                 color: focusNode.hasFocus?CustomColor.kprimaryblue:CustomColor.kgrey900, size: 18.sp))
          //         : InkWell(
          //             onTap: () {
          //               setState(() {
          //                 obsecureText = !obsecureText;
          //               });
          //             },
          //             child: Icon(Icons.visibility_off_outlined,
          //                 color:focusNode.hasFocus?CustomColor.kprimaryblue:CustomColor.kgrey900, size: 18.sp,))
          //     : widget.showCalenderIcon
          //         ? Padding(
          //             padding: EdgeInsets.all(12.sp),
          //             child: InkWell(
          //               onTap: () async {
          //                 final DateTime? picked = await showDatePicker(
          //                   context: context,
          //                   initialDate: DateTime.now(),
          //                   firstDate: DateTime(1960),
          //                   lastDate: DateTime(DateTime.now().year + 1),
          //                   builder: (context, child) {
          //                     return Theme(
          //                         data: ThemeData.light().copyWith(
          //                           colorScheme: ColorScheme.light(
          //                             primary: CustomColor.kprimaryblue,
          //                             onPrimary: Colors.white,
          //                             surface: CustomColor.kbackgroundwhite,
          //                             onSurface: CustomColor.kbackgroundwhite,
          //                           ),
          //                           dialogBackgroundColor:
          //                               CustomColor.kbackgroundwhite,
          //                         ),
          //                         child: child!);
          //                   },
          //                 );
          //                 if (picked != null) {
          //                   setState(() {
          //                     widget.controller.text = DateFormat('dd-MMM-yyyy')
          //                         .format(picked)
          //                         .toString();
          //                   });
          //                 }
          //               },
          //               child: Icon(Icons.add),
          //             ),
          //           )
          //         : SizedBox(),
          hintText: widget.hintText,
          hintStyle: CustomTextStyle.kmedium.copyWith(
              color: CustomColor.kgrey500,
              fontWeight: CustomFontWeight.kRegularWeight),
          fillColor: focusNode.hasFocus
              ? CustomColor.kprimaryblue.withOpacity(0.1)
              : CustomColor.kgrey200,
          filled: true,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.w),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: CustomColor.kprimaryblue),
              borderRadius: BorderRadius.circular(kContRadius)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(kContRadius)),
          disabledBorder: OutlineInputBorder(
              //borderSide: BorderSide(color: CustomColor.kprimaryblue),
              borderRadius: BorderRadius.circular(kContRadius)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: CustomColor.kblack),
              borderRadius: BorderRadius.circular(kContRadius))),
      cursorColor: CustomColor.kprimaryblue,
    );
  }
}
