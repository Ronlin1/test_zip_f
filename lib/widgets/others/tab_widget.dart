import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:efunding/utils/dimsensions.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize * 0.4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(title),
      ),
    );
  }
}
