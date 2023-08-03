import 'package:flutter/material.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';

class TopVolunteerHomeWidget extends StatelessWidget {
  const TopVolunteerHomeWidget({Key? key, required this.image, required this.foundationNameTitle, required this.foundationNameSubTitle}) : super(key: key);

  final String image;
  final String foundationNameTitle;
  final String foundationNameSubTitle;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.3),

      padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
      child: Column(
        mainAxisAlignment: mainCenter,
        crossAxisAlignment: crossCenter,
        children: [
          Image.asset(image),
          Text(foundationNameTitle, style: CustomStyler.popularTitleStyle),
          Row(
            children: [
              Icon(Icons.location_on, color: CustomColor.whiteColor.withOpacity(0.6), size: 10,),
              Text(foundationNameSubTitle, style: CustomStyler.popularDesStyle,)

            ],
          )
        ],
      ),
    );
  }
}
