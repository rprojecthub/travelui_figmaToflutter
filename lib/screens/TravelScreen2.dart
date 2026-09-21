import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui/constants/app_assets.dart';
import 'package:travel_ui/models/places_datalist.dart';
import 'package:travel_ui/widgets/bottom_nav_bar.dart';
import 'package:travel_ui/widgets/category_tabs.dart';
import 'package:travel_ui/widgets/place_card.dart';
import '../constants/app_colors.dart';
import '../constants/responsive.dart';

class TravelScreen2 extends StatefulWidget {
  const TravelScreen2({super.key});

  @override
  State<TravelScreen2> createState() => _TravelScreen2State();
}

class _TravelScreen2State extends State<TravelScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
        ),
        child: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 10.r(context),
            ),
            //Header
            Padding(
               padding: EdgeInsets.symmetric(horizontal: 26.r(context)),
               child: Row(
                 children: [
                   Expanded(child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("Hi, David",
                         style: GoogleFonts.montserrat(
                           fontSize: 26.r(context),
                           fontWeight: FontWeight.w600,
                         ),
                       ),
                       Text('Explore the world',
                         style: TextStyle(
                           fontSize: 20.r(context),
                           fontWeight: FontWeight.w400,
                           color: AppColors.grey1,
                         ),
                       ),
                     ],
                   )),
                   CircleAvatar(
                     backgroundColor: Colors.grey,
                     radius: 30.r(context),
                     backgroundImage: AssetImage(
                       AppAssets.image3,
                     ),

                   ),
                 ],
               ),
             ),
            SizedBox(height: 30.r(context)),

            //SearchBar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.r(context)),
              child: Container(
                height: 60.r(context),
                padding: EdgeInsets.all(15.r(context)),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: AppColors.lightgrey,
                  ),
                  borderRadius: BorderRadius.circular(20.r(context))
                ),
                child:Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Search places',
                        style: TextStyle(
                          fontSize: 16.r(context),
                          color: AppColors.darkgrey,
                        ),
                      ),
                      Spacer(),
                      VerticalDivider(
                        width: 30.r(context),
                        thickness: 1,
                        color: AppColors.lightgrey,
                      ),
                      SvgPicture.asset(
                        AppAssets.icon_settings,
                        width: 24.r(context),
                        height: 24.r(context),
                      )
                    ],
                  ),
                ),
              ),
            SizedBox(
              height: 30.r(context),
            ),

            //Popular places
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.r(context)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular places',
                  style: GoogleFonts.poppins(
                    fontSize: 20.r(context),
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                  Text('View all',
                    style: TextStyle(
                      fontSize: 16.r(context),
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey1
                    ),

                  )
                ],
              ),
            ),
            SizedBox(
              height: 40.r(context),
            ),

            //Category tabs
            SizedBox(
              height: 50.r(context),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.r(context)),
                child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CategoryTab(text: 'Most Viewed', backgrdColor: AppColors.black),
                          SizedBox(width: 12.r(context)),
                          CategoryTab(text: 'Nearby', backgrdColor: AppColors.white),
                          SizedBox(width: 12.r(context)),
                          CategoryTab(text: 'Latest', backgrdColor: AppColors.white)
                        ],
                      ),
                    ),)),
            SizedBox(height: 40.r(context)),

            //Places list
            SizedBox(
              height: 380.r(context),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 26.r(context)),
                itemCount: places.length,
                separatorBuilder: (context, index) => SizedBox(width: 15.r(context)),
                itemBuilder: (context, index){
                  final place1 = places[index];
                  return PlaceCard(place: place1);
                }

              ),
            ),
            SizedBox(height: 5.r(context)),

            //Botton navigation bar
           // BottomNavBar()
          ],
        )
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
