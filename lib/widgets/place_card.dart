import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_assets.dart';
import '../constants/app_colors.dart';
import '../constants/responsive.dart';
import '../models/place.dart';
class PlaceCard extends StatelessWidget {

 /* String title;
  String location;
  String rating;
  String image;*/

  final Place place;
  PlaceCard({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240.r(context),
      height: 380.r(context),

      child: Stack(
        children: [
          //Image,
          Positioned.fill(
            child:ClipRRect(
              borderRadius: BorderRadius.circular(30.r(context)),
              child: Image.asset(
               // AppAssets.image1,
                place.image,
                fit: BoxFit.cover,

              ),
            ),
          ),
          // Favourite(heart) icon
          Positioned(
            top: 15.r(context),
            right: 15.r(context),
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 20.r(context),
              child: SvgPicture.asset(
                AppAssets.icon_heart,
                // alignment: Alignment.center,
                width: 18.r(context),
                height: 18.r(context),
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          //Information card
          Positioned(
            left: 16.r(context),
            right: 16.r(context),
            bottom: 18.r(context),
            child: Container(
              padding: EdgeInsets.all(15.r(context)),
              decoration: BoxDecoration(
                  color: AppColors.black.withAlpha(150),
                  borderRadius: BorderRadius.circular(15.r(context))),
              child: Column(
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Title
                  Text(place.title,
                    style: GoogleFonts.roboto(
                      color: AppColors.white,
                      fontSize: 16.r(context),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8.r(context)),

                  // Location and Rating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Location
                      Row(children: [
                        SvgPicture.asset(
                          AppAssets.fi_rr_marker,
                          width: 18.r(context),
                          height: 18.r(context),
                        ),
                        SizedBox(width: 5.r(context)),
                        Text(place.location,
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 14.r(context)
                          ),
                        ),
                      ]),

                      // Rating
                      Row(children: [
                        SvgPicture.asset(
                          AppAssets.vector,
                          // alignment: Alignment.center,
                          width: 18.r(context),
                          height: 18.r(context),
                        ),
                        SizedBox(width: 5.r(context)),
                        Text(place.rating.toStringAsFixed(1),
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 14.r(context)
                          ),
                        ),
                      ],),
                    ],
                  ),
                ],
              ),

            ),
          ),
        ],
      ),
    );
  }
}
