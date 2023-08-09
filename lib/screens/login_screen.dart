import 'package:flutter/material.dart';
import 'package:charify/components/already_have_an_account_check.dart';
import 'package:charify/components/rounded_button.dart';
import 'package:charify/components/rounded_input_field.dart';
import 'package:charify/components/rounded_password_field.dart';
import 'package:charify/screens/signup_screen.dart';
import 'package:charify/utils/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:charify/services/auth_service.dart';
import 'package:charify/screens/campaigns_screen.dart';

class LoginScreen extends StatefulWidget {
  final VoidCallback? onSignIn; // Make onSignIn nullable

  // const LoginScreen({Key key, this.onSignIn}) : super(key: key);
  const LoginScreen({this.onSignIn}) : super();

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              child: Image.asset("assets/images/main_top.png"),
              width: size.width * 0.35,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset("assets/images/login_bottom.png"),
              width: size.width * 0.4,
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Login",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        foreground: Paint()..shader = linearGradient),
                  ),
                  SizedBox(height: 10),
                  SvgPicture.asset(
                    "assets/images/login.svg",
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
                    text: "LOGIN",
                    color: kPrimaryColor,
                    textColor: Colors.white,
                    press: () async {
                      // Replace with actual email and password from input fields
                      String email = "user@example.com";
                      String password = "password";

                      // Call the authService to sign in
                      bool signInSuccessful =
                          await AuthService.signIn(email, password);

                      if (signInSuccessful) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CampaignsScreen()),
                        );
                      } else {
                        // Handle sign-in failure (show an error message, etc.)
                      }
                    },
                  ),
                  SizedBox(height: size.height * 0.03),
                  AlreadyHaveAnAccountCheck(
                    press: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SignUpScreen();
                      }));
                    },
                    login: true,
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
