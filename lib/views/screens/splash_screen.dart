import 'package:flutter/material.dart';
import 'package:efunding/utils/custom_color.dart';
import 'package:efunding/utils/custom_style.dart';
import 'package:efunding/utils/dimsensions.dart';
import 'package:efunding/utils/size.dart';
import 'package:efunding/utils/strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.primaryBackgroundColor,
        body: Column(
          mainAxisAlignment: mainSpaceBet,
          crossAxisAlignment: crossCenter,
          children: [
            Container(),
            Center(
              child: Image.asset(Strings.splashLogo),
            ),
            Padding(
              padding: EdgeInsets.all(Dimensions.defaultPaddingSize),
              child: Text(Strings.splashTitle,
                  style: CustomStyler.splashTitleStyle),
            )
          ],
        ));
  }
}
