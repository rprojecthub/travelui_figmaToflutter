import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_ui/constants/responsive.dart';

import '../constants/app_colors.dart';
class detailItem extends StatelessWidget {

  final String icon;
  final String text;
  const detailItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 34.r(context),
          height: 34.r(context),
          decoration: BoxDecoration(
            color: AppColors.lightgrey,
            borderRadius: BorderRadius.circular(6.r(context)),
          ),
          alignment: Alignment.center,
          child: SvgPicture.asset(
            icon,
            width: 18.r(context),
            height: 18.r(context),
          ),
        ),
        SizedBox(width: 8.r(context)),
        Text(
          text,
          style: TextStyle(
            color: AppColors.grey1,
            fontSize: 16.r(context),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
