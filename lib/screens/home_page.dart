import 'package:flutter/material.dart';
import 'package:charify/screens/education_screen.dart'; // Import your education screen
import 'package:charify/screens/health_screen.dart'; // Import your health screen
import 'package:charify/screens/ehelp_screen.dart'; // Import your ehelp screen
import 'package:charify/screens/clothes_screen.dart'; // Import your clothes screen
import 'package:charify/screens/article_screen.dart'; // Import your article screen
import 'package:charify/screens/senior_screen.dart'; // Import your senior screen
import 'package:charify/screens/login_screen.dart'; // Import your login screen
import 'package:charify/components/reusable_card.dart'; // Import your ReusableCard widget
import 'package:charify/utils/constants.dart'; // Import your constants

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        centerTitle: true,
        leading: Container(),
        actions: [
          TextButton(
            onPressed: () {
              showDialog<void>(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Do you want to logout?'),
                    actions: <Widget>[
                      TextButton(
                        child: Text('Yes'),
                        onPressed: () {
                          Navigator.pushNamed(context, LoginScreen.id);
                        },
                      ),
                      TextButton(
                        child: Text('No'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: Icon(
              Icons.close,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: Text(
                  "Where you want to Charify?",
                  style: TextStyle(
                    fontSize: 45,
                    color: Colors.white.withOpacity(0.9),
                  ),
                ),
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    ReusableCard(
                      time: 1,
                      image: 'images/edu.jpg',
                      nextChild: EducationScreen(),
                    ),
                    ReusableCard(
                      time: 2,
                      image: 'images/blood.jpg',
                      nextChild: HealthScreen(),
                    ),
                    ReusableCard(
                      time: 3,
                      image: 'images/food.jpg',
                      nextChild: EhelpScreen(),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    ReusableCard(
                      time: 4,
                      image: 'images/clothes1.jpg',
                      nextChild: ClothesScreen(),
                    ),
                    ReusableCard(
                      time: 5,
                      image: 'images/wash.jpg',
                      nextChild: ArticleScreen(),
                    ),
                    ReusableCard(
                      time: 6,
                      image: 'images/senior.jpg',
                      nextChild: SeniorScreen(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
