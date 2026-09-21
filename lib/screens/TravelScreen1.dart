import 'package:flutter/material.dart';
import 'package:travel_ui/constants/app_colors.dart';
import '../constants/responsive.dart';
import 'package:google_fonts/google_fonts.dart';

class TravelScreen1 extends StatelessWidget {
  const TravelScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                AppColors.lightblue,
                AppColors.darkblue,
              ],)
            ),
              child: Padding(
                padding: EdgeInsets.all(100.r(context)),
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text('Travel',
                            style: GoogleFonts.lobster(
                              fontWeight: FontWeight.w600,
                              fontSize: 44.r(context),
                              color: AppColors.white,
                              fontStyle: FontStyle.italic,
                            ),
                        ),
                        SizedBox(width: 15.r(context)),
                        Icon(Icons.public, size: 45, color: Colors.white),
                      ],
                    ),
                    SizedBox(height: 30.r(context)),
                    Text('Find Your Dream\nDestination with Us',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.r(context),
                          color: AppColors.white
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),


          ),

    );
  }
}
