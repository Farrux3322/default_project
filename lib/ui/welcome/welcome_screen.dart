import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../auth/login/login_screen.dart';
import '../auth/sing_up/sign_up_screen.dart';
import '../widgets/global_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.C_1F5460,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.C_1F5460,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              "Spedah",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                fontFamily: "Sora",
              ),
            ),
            const SizedBox(width: 4),
            Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColor.C_FFCA42),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                AppImages.bicycle,
                height: height * 364 / 812,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28),
            child: Text(
              "Let’s \nget started",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Sora",
                fontSize: height > 600 ? 48 : 35.46,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.only(left: 28),
            child: Text(
              "Everything start from here",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Sora",
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(height: 24),
          GlobalButton(
              title: 'Log in',
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const LoginScreen();
                }));
              },
              height: height,
              width: width,
            buttonColor: AppColor.C_FFCA42, textColor: AppColor.C_10405A,),
          const SizedBox(height: 16),
          GlobalButton(
              title: 'Sign up',
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const SignUpScreen();
                }));
              },
              height: height,
              width: width,
              buttonColor: AppColor.C_D5E7D4, textColor: AppColor.C_10405A,),
        ],
      ),
    );
  }
}
