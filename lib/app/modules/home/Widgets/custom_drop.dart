// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:reasa/app/data/constants.dart';
// import 'package:reasa/app/data/typography.dart';


// class DropDownCustom extends StatelessWidget {
//   const DropDownCustom(
//       {Key? key,
//       this.items,
//       required this.value,
//       this.OnChanged,
//       required this.hint,
//       required this.hintenable})
//       : super(key: key);

//   @override
//   final List<DropdownMenuItem<String>>? items;
//   final String value;
//   final void Function(String?)? OnChanged;
//   final bool hintenable;
//   final String hint;

//   Widget build(BuildContext context) {
//     return DropdownButton(
//       //focusColor: CustomColor.kblack,
//       value: value,
//       items: items,
//       onChanged: OnChanged,
//       iconEnabledColor: CustomColor.kblack,
//       isExpanded: true,
//       icon: Icon(
//         Icons.arrow_drop_down,
//         color: CustomColor.kgrey500
//       ),
//       underline: Container(),
//       hint:  Container(
//         child: Text(
//           "Select Gender",
//           style: CustomTextStyle.kmedium.copyWith( color: CustomColor.kgrey900, fontWeight: CustomFontWeight.kSemiBoldFontWeight),
//         ),
//       ),
//       disabledHint: Text("select"),
//     );
//   }
// }
