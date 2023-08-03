import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';

class FilterCampaignWidget extends StatefulWidget {
  const FilterCampaignWidget({Key? key}) : super(key: key);

  @override
  State<FilterCampaignWidget> createState() => _FilterCampaignWidgetState();
}

class _FilterCampaignWidgetState extends State<FilterCampaignWidget> {
  int selectedIndex = 0;
  int cardSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: FittedBox(
        fit: BoxFit.fill,
        alignment: Alignment.topCenter,
        child: Row(
          mainAxisAlignment: mainSpaceBet,
          children: [
            _selectorWidget(context, Strings.urgentFundraising, 0 ),
            _selectorWidget(context, Strings.pendingCampaign, 1 ),
            _selectorWidget(context, Strings.rejectedCampaign, 2 ),
            _selectorWidget(context, Strings.successfulCampaign, 3 ),
          ],
        ),
      ),
    );
  }



  _selectorWidget(BuildContext context, String name, int index){
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
          width: 170.w,
          height: 45.h,
          margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.2),
          decoration: BoxDecoration(
              color: CustomColor.appBarColor,
              borderRadius: BorderRadius.circular(30.r),
              border: Border.all(
                  color: selectedIndex == index
                      ? CustomColor.whiteColor.withOpacity(0.5)
                      : Colors.transparent,
                  width: 1)
          ),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              name,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 15, color: Colors.white.withOpacity(0.5), fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}

