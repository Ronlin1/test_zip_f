import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';

class TopVolunteerScreenWidget extends StatelessWidget {
  const TopVolunteerScreenWidget({Key? key, required this.image, required this.title, required this.subTitle, required this.onPressed}) : super(key: key);

  final String image;
  final String title;
  final String subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimensions.marginSize * 0.3),
      decoration: BoxDecoration(
        color: CustomColor.appBarColor,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          Row(
            children: [
              Padding(
                  padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
                  child: Image.asset(
                    image,
                    height: 70,
                  )),
              addHorizontalSpace(5.w),
              Column(
                mainAxisAlignment: mainCenter,
                crossAxisAlignment: crossStart,
                children: [
                  Column(
                    crossAxisAlignment: crossStart,
                    children: [
                      Padding(
                        padding:
                        EdgeInsets.all(Dimensions.defaultPaddingSize * 0.1),
                        child: Text(
                          title,
                          style: CustomStyler.nigerianMedicalDevTitleStyle,
                        ),
                      ),
                      Padding(
                          padding:
                          EdgeInsets.all(Dimensions.defaultPaddingSize * 0.1),
                          child: Row(
                            children: [
                              Icon(Icons.location_on, color: CustomColor.whiteColor.withOpacity(0.6), size: 10,),
                              Text(subTitle, style: CustomStyler.popularDesStyle,)

                            ],
                          )
                      ),
                    ],
                  ),

                ],
              ),
            ],
          ),

          Container(
            height: 40.h,
            margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
            child: ElevatedButton(
              onPressed: onPressed,
              style: TextButton.styleFrom(
                elevation: 0,
                backgroundColor: CustomColor.primaryBackgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.r),
                  ),
                  side: const BorderSide(
                    width: 1,
                    color: CustomColor.primaryColor,
                  ),
                ),
              ),
              child: Text(
                Strings.viewProfile,
                style: TextStyle(
                    color: CustomColor.primaryColor,
                    fontSize: Dimensions.smallTextSize * 0.7,
                    fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
    );
  }
}
