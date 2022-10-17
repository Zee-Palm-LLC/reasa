import 'package:flutter/material.dart';

import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';



class ReviewRow extends StatelessWidget {
  final String title;
  final String subtitle;
  const ReviewRow({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        title.medium(
          color: CustomColor.kgrey700,
          fontWeight: CustomFontWeight.kMediumFontWeight,
        ),
        Spacer(),
        subtitle.large(
          color: CustomColor.kgrey900,
          fontWeight: CustomFontWeight.kSemiBoldFontWeight,
        ),
      ],
    );
  }
}