import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/responsive.dart';
class CategoryTab extends StatelessWidget {

    String text;
    Color backgrdColor;

  CategoryTab({super.key, required this.text, required this.backgrdColor});

  @override
  Widget build(BuildContext context) {
    return  Container(
      // height: 50.r(context),
      width: 140.r(context),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 10.r(context)),
      decoration: BoxDecoration(
        color: backgrdColor,
        border: Border.all(
          width: 1,
          color: AppColors.lightgrey,
        ),
        borderRadius: BorderRadius.circular(20.r(context)),
      ),
      child: Text(text,
       style: TextStyle(
         fontSize: 14.r(context),
         fontWeight: FontWeight.w600,
         color: backgrdColor == AppColors.black ? AppColors.white : AppColors.lightgrey,
       ),
      ),
    );
  }
}
