import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_ui/constants/app_colors.dart';
import 'package:travel_ui/constants/responsive.dart';
import '../constants/app_assets.dart';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int selectedIndex = 0;

  final icons = [
    AppAssets.icon_home,
    AppAssets.icon_clock,
    AppAssets.icon_heart,
    AppAssets.icon_user,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.r(context), vertical: 8.r(context)),
      child: Container(
       height: 60.r(context),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(
            20.r(context),
          ),
          //color: AppColors.lightgrey,
        ),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: List.generate(
             icons.length,
             (index){
               return GestureDetector(
                 onTap: (){
                   setState(() {
                     selectedIndex = index;
                   });
                 },
                 child: SvgPicture.asset(
                   icons[index],
                   width: 24.r(context),
                   height: 24.r(context),
                   colorFilter: ColorFilter.mode(
                       selectedIndex == index ? AppColors.black : AppColors.grey1,
                       BlendMode.srcIn
                   ),
                 ),
               );
             }

         ),
       ),
       /* child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //Home
            GestureDetector(
              onTap: (){
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: SvgPicture.asset(
                AppAssets.icon_home,
                width: 24.r(context),
                height: 24.r(context),
                colorFilter: ColorFilter.mode(
                  selectedIndex == 0
                      ? AppColors.black
                      : AppColors.grey1,
                  BlendMode.srcIn,
              ),
            )),

            //Clock
            GestureDetector(
              onTap: (){
                setState(() {
                  selectedIndex = 1;
                });
              },
              child: SvgPicture.asset(
                AppAssets.icon_clock,
                width: 24.r(context),
                height: 24.r(context),
                colorFilter: ColorFilter.mode(
                  selectedIndex == 1
                      ? AppColors.black
                      : AppColors.grey1,
                  BlendMode.srcIn,
              ),
            )),

            //Favourite
            GestureDetector(
              onTap: (){
                setState(() {
                  selectedIndex = 2;
                });
              },
              child: SvgPicture.asset(
                AppAssets.icon_heart,
                width: 24.r(context),
                height: 24.r(context),
                colorFilter: ColorFilter.mode(
                  selectedIndex == 2
                      ? AppColors.black
                      : AppColors.grey1,
                  BlendMode.srcIn,
              ),
            )),

            //Profile
            GestureDetector(
              onTap: (){
                setState(() {
                  selectedIndex = 3;
                });
              },
              child: SvgPicture.asset(
                AppAssets.icon_user,
                width: 24.r(context),
                height: 24.r(context),
                colorFilter: ColorFilter.mode(
                  selectedIndex == 3
                      ? AppColors.black
                      : AppColors.grey1,
                  BlendMode.srcIn,
              ),
            )),
          ],
        ),*/
      ),
    );
  }
}
