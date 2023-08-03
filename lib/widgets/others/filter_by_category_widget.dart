import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';

class FilterByCategoryWidget extends StatefulWidget {
  const FilterByCategoryWidget({Key? key}) : super(key: key);

  @override
  State<FilterByCategoryWidget> createState() => _FilterByCategoryWidgetState();
}

class _FilterByCategoryWidgetState extends State<FilterByCategoryWidget> {
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
            _selectorWidget(context, Strings.medical, 0 ),
            _selectorWidget(context, Strings.education, 1 ),
            _selectorWidget(context, Strings.church, 2 ),
            _selectorWidget(context, Strings.disaster, 3 ),
            _selectorWidget(context, Strings.funeral, 4 ),
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
          width: 100.w,
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
