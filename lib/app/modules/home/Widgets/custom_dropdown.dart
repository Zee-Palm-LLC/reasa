
import 'package:flutter/material.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
class CustomDropDown<T> extends StatelessWidget {
  final List<T> dropDownList;
  final T? currentItem;
  final String hintText;
  final void Function(T?)? onchanged;
  CustomDropDown(
      {Key? key,
        required this.dropDownList,
        required this.currentItem,
        required this.hintText,
        required this.onchanged})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DropdownButton<T>(
      isDense: true,
      isExpanded: true,
      menuMaxHeight: 100,
      icon: Icon(
        Icons.keyboard_arrow_down,
        color: CustomColor.kgrey500
      ),
      items: dropDownList.map((T value) {
        return DropdownMenuItem<T>(
          value: value,
          child: Text(value.toString(),style: CustomTextStyle.kmedium.copyWith( color: CustomColor.kgrey900, fontWeight: CustomFontWeight.kSemiBoldFontWeight),),
        );
      }).toList(),
      disabledHint: Text(
        hintText,
        style: CustomTextStyle.kmedium.copyWith( color: CustomColor.kgrey500, fontWeight: CustomFontWeight.kRegularWeight)
      ),
      hint: Text(
        hintText,
        style: CustomTextStyle.kmedium.copyWith( color: CustomColor.kgrey500, fontWeight: CustomFontWeight.kRegularWeight)
      ),
      style: CustomTextStyle.kmedium.copyWith( color: CustomColor.kgrey900, fontWeight: CustomFontWeight.kSemiBoldFontWeight),
      onChanged: onchanged,
      value: currentItem,
    );
  }
}
