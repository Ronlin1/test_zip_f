import 'package:flutter/material.dart';
import 'package:charify/utils/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:charify/screens/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    });

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: SvgPicture.asset(
          "assets/icons/charify.svg",
          height: 150.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
