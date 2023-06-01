
import 'package:default_project/utils/colors.dart';
import 'package:default_project/utils/my_icon.dart';
import 'package:flutter/material.dart';

import '../on_boarding/on_boarding_screen.dart';
class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    _navigateToWelcomeScreen(context);

    double width = MediaQuery.of(context).size.width;

    return Scaffold(
            appBar: AppBar(
              backgroundColor: MyColors.C_E5E5E5,
              elevation: 0,
            ),
      backgroundColor: MyColors.C_E5E5E5,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(MyIcons.logoTitle,width: width*320/812,)
          ],
        ),
      ),
    );
  }

  void _navigateToWelcomeScreen(BuildContext context) async {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return const OnBoardingScreen();
          },
        ),
      );
    });
  }


}