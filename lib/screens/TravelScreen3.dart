import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui/widgets/detail_Item.dart';
import '../constants/app_assets.dart';
import '../constants/app_colors.dart';
import '../constants/responsive.dart';

class TravelScreen3 extends StatefulWidget {
  const TravelScreen3({super.key});

  @override
  State<TravelScreen3> createState() => _TravelScreen3State();
}

class _TravelScreen3State extends State<TravelScreen3> {
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                // image with card
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22.r(context)),
                  child: SizedBox(
                    height: 460.r(context),
                    width: double.infinity,
                    child: Stack(
                      children: [
                        //Image,
                        Positioned.fill(
                          child:ClipRRect(
                            borderRadius: BorderRadius.circular(30.r(context)),
                            child: Image.asset(
                               AppAssets.image2,
                               fit: BoxFit.cover,
                            ),
                          ),
                        ),
                
                        // back and saved icon
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                  backgroundColor: AppColors.darkgrey,
                                  radius: 20.r(context),
                                  child: SvgPicture.asset(
                                    AppAssets.icon_arrow_left,
                                    // alignment: Alignment.center,
                                    width: 14.r(context),
                                    height: 14.r(context),
                                    colorFilter: const ColorFilter.mode(
                                      Colors.white,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                ),
                              CircleAvatar(
                                  backgroundColor: AppColors.darkgrey,
                                  radius: 20.r(context),
                                  child: SvgPicture.asset(
                                    AppAssets.Archive,
                                    // alignment: Alignment.center,
                                    width: 18.r(context),
                                    height: 18.r(context),
                                    colorFilter: const ColorFilter.mode(
                                      Colors.white,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                ),
                              
                            ],
                          ),
                        ),
                
                        // place card information
                        Positioned(
                          left: 16.r(context),
                          right: 16.r(context),
                          bottom: 20.r(context),
                          child: Container(
                            padding: EdgeInsets.all(15.r(context)),
                            decoration: BoxDecoration(
                                color: AppColors.black.withAlpha(180),
                                borderRadius: BorderRadius.circular(15.r(context))),
                            child: Column(
                              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //Title
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Andes Mountain',
                                      style: TextStyle(
                                        color: AppColors.white,
                                        fontSize: 24.r(context),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text('Price',
                                      style: TextStyle(
                                        color: AppColors.grey1,
                                        fontSize: 16.r(context),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.r(context)),
                
                                // Location and Price
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
                                      Text('South, America',
                                        style: TextStyle(
                                            color: AppColors.grey1,
                                            fontSize: 18.r(context)
                                        ),
                                      ),
                                    ]),
                
                                    // Price
                                    Row(children: [
                                      Text('\$',
                                        style: TextStyle(
                                            color: AppColors.grey1,
                                            fontSize: 18.r(context)
                                        ),
                                      ),
                                      SizedBox(width: 5.r(context)),
                                      Text('230',
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 20.r(context)
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
                  ),
                ),
                SizedBox(height: 30.r(context)),
                
                // overView
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22.r(context)),
                  child: Row(
                    children: [
                      Text('Overview',
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 24.r(context),
                          fontWeight: FontWeight.w600,
                      )),
                      SizedBox(width: 30.r(context)),
                      Text('Details',
                        style: TextStyle(
                          color: AppColors.darkgrey,
                          fontSize: 18.r(context),
                          fontWeight: FontWeight.w500,)
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.r(context)),
                
                // icons and details
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.r(context)),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      detailItem(icon: AppAssets.icon_clock, text: '8 hours'),
                      detailItem(icon: AppAssets.icon_cloud, text: '16C'),
                      detailItem(icon: AppAssets.vector1, text: '4.5'),
                    ],
                  ),
                ),
                SizedBox(height: 30.r(context)),
                
                // description
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.r(context)),
                  child: SizedBox(
                    height: 100.r(context),
                    child: ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white,
                            Colors.white,
                            Colors.transparent,
                          ],
                          stops: [
                            0.0,
                            0.65,
                            1.0,
                          ],
                        ).createShader(bounds);
                      },
                      blendMode: BlendMode.dstIn,
                      child: Text(
                        'This vast mountain range is renowned for its remarkable diversity in terms of topography and climate. It features towering peaks, active volcanoes, deep canyons, expansive plateaus...',
                        style: GoogleFonts.roboto(
                          fontSize: 16.r(context),
                          color: AppColors.grey1,
                          height: 1.5, // Improves readability for long text
                        ),
                        maxLines: 4, // Restricts text length if needed
                        //overflow: TextOverflow.ellipsis,//Adds "..." if text is cut off
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                ),
                
                // button
              /* ElevatedButton(
                  onPressed: () {},
                  child: const Text('Button'),
                )*/
                            ],
                          ),
              )),

        ),
        bottomNavigationBar:Padding(
          padding: EdgeInsets.only(left: 26.r(context),  right: 26.r(context), bottom: 35.r(context)),
          child: SizedBox(
          width: double.infinity,
          height: 60.r(context),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
            backgroundColor:Colors.black,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.r(context))
        )
       ),
            onPressed: (){},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Book Now',
                    style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontWeight:FontWeight.bold,
                     fontSize: 18.r(context)),),
              SizedBox(width: 10.r(context)),
              SvgPicture.asset(
                AppAssets.send_icon,
                width: 20.r(context),
                height: 20.r(context),
              ),
            ],
          ),


          ),
    ),
    ),

    );
  }
}
