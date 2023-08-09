import 'package:flutter/material.dart';
import 'package:charify/components/already_have_an_account_check.dart';
import 'package:charify/components/or_divider.dart';
import 'package:charify/components/rounded_button.dart';
import 'package:charify/components/rounded_input_field.dart';
import 'package:charify/components/rounded_password_field.dart';
import 'package:charify/components/social_icon.dart';
import 'package:charify/screens/login_screen.dart';
import 'package:charify/utils/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:charify/services/auth_service.dart';
import 'package:charify/screens/campaigns_screen.dart'; // Import the CampaignsScreen class

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset("assets/images/signup_top.png"),
              width: size.width * 0.35,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset("assets/images/main_bottom.png"),
              width: size.width * 0.23,
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "SignUp",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        foreground: Paint()..shader = linearGradient),
                  ),
                  SizedBox(height: 10),
                  SvgPicture.asset(
                    "assets/images/signup.svg",
                    height: size.height * 0.25,
                  ),
                  SizedBox(height: 10),
                  RoundedInputField(
                    hintText: "Your Email",
                    onChanged: (value) {},
                  ),
                  RoundedPasswordField(
                    onChanged: (value) {},
                  ),
                  RoundedButton(
                    text: "SIGN UP",
                    color: kPrimaryColor,
                    textColor: Colors.white,
                    press: () async {
                      // Replace with actual email and password from input fields
                      String email = "user@example.com";
                      String password = "password";

                      // Call the authService to register
                      bool registrationSuccessful =
                          await AuthService.signUp(email, password);

                      if (registrationSuccessful) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CampaignsScreen()),
                        );
                      } else {
                        // Handle registration failure (show an error message, etc.)
                      }
                    },
                  ),
                  SizedBox(height: size.height * 0.03),
                  AlreadyHaveAnAccountCheck(
                    press: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginScreen();
                      }));
                    },
                    login: false,
                  ),
                  OrDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SocialIcon(
                        iconSrc: "assets/icons/facebook.svg",
                        press: () {},
                      ),
                      SocialIcon(
                        iconSrc: "assets/icons/twitter.svg",
                        press: () {},
                      ),
                      SocialIcon(
                        iconSrc: "assets/icons/google-plus.svg",
                        press: () {},
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
