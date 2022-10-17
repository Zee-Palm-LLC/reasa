import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:reasa/app/data/chip_list.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';

class ReisidentChip extends StatelessWidget {
  final Function(int)? onextratoggele;
  const ReisidentChip({
    Key? key,
    this.onextratoggele,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: ChipList(
        extraOnToggle: onextratoggele,
        shouldWrap: true,
        runSpacing: 12.w,
        spacing: 12.w,
        style: CustomTextStyle.large
            .copyWith(fontWeight: CustomFontWeight.kSemiBoldFontWeight),
        borderRadiiList: [kBigRadius],
        listOfChipNames: residentchip,
        activeBgColorList: [
          CustomColor.kprimaryblue,
        ],
        inactiveBgColorList: [
          CustomColor.kbackgroundwhite,
        ],
        activeTextColorList: [
          CustomColor.kbackgroundwhite,
        ],
        inactiveTextColorList: [
          CustomColor.kprimaryblue,
        ],
        listOfChipIndicesCurrentlySeclected: [0],
        activeBorderColorList: [
          CustomColor.kprimaryblue,
        ],
        inactiveBorderColorList: [
          CustomColor.kprimaryblue,
        ],
      ),
    );
  }
}

class FacilitiesChip extends StatelessWidget {
  final Function(int)? onextratoggele;
  final List<String> chiplist;
  const FacilitiesChip({
    Key? key,
    this.onextratoggele,
    required this.chiplist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: ChipList(
        extraOnToggle: onextratoggele,
        shouldWrap: true,
        runSpacing: 12.w,
        spacing: 12.w,
        style: CustomTextStyle.large
            .copyWith(fontWeight: CustomFontWeight.kSemiBoldFontWeight),
        borderRadiiList: [kBigRadius],
        listOfChipNames: chiplist,
        activeBgColorList: [
          CustomColor.kprimaryblue,
        ],
        inactiveBgColorList: [
          CustomColor.kbackgroundwhite,
        ],
        activeTextColorList: [
          CustomColor.kbackgroundwhite,
        ],
        inactiveTextColorList: [
          CustomColor.kprimaryblue,
        ],
        listOfChipIndicesCurrentlySeclected: [0],
        activeBorderColorList: [
          CustomColor.kprimaryblue,
        ],
        inactiveBorderColorList: [
          CustomColor.kprimaryblue,
        ],
      ),
    );
  }
}
