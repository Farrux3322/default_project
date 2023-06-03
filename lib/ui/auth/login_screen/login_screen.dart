import 'package:default_project/ui/auth/login_screen/widgets/login_button.dart';
import 'package:default_project/ui/auth/login_screen/widgets/password_input.dart';
import 'package:default_project/ui/auth/login_screen/widgets/universal_input.dart';
import 'package:default_project/ui/auth/sign_up/sign_up_screen.dart';
import 'package:default_project/ui/auth/widget/global_button.dart';
import 'package:default_project/utils/colors.dart';
import 'package:default_project/utils/my_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.white,
        title: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return const LoginScreen();
                }),
              );
            },
            child: SvgPicture.asset(
              MyIcons.back,
              width: 18,
              height: 18,
            )),
        elevation: 0,
      ),
      body: ListView(children: [
        Column(
          children: [
            SizedBox(
              height: 40 / 812 * height,
            ),
            Text(
              "Welcome back",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: MyColors.C_1F5460),
            ),
            SizedBox(
              height: 16 / 812 * height,
            ),
            Text(
              "Enter your credential to continue",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: MyColors.C_879EA4),
            ),
            SizedBox(
              height: 36 / 812 * height,
            ),
            UniversalInput(
                title: "Email or username",
                iconPath: MyIcons.user,
                type: TextInputType.emailAddress),
            SizedBox(
              height: 24 / 812 * height,
            ),
            PasswordInput(
                title: "Password",
                iconPath: MyIcons.password,
                type: TextInputType.text),
            SizedBox(
              height: 16 / 812 * height,
            ),
            Row(
              children: [
                SizedBox(
                  width: 237 / 375 * width,
                ),
                Text(
                  "Forgot password?",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: MyColors.C_1F5460),
                ),
              ],
            ),
            SizedBox(
              height: 24 / 812 * height,
            ),
            GlobalButton(
                title: "Log in",
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const SignUpScreen();
                    }),
                  );
                }),
            SizedBox(
              height: 16 / 812 * height,
            ),
            LoginWithButton(
                title: "Log in using Apple",
                onTap: () {},
                icon: MyIcons.apple,
                color: MyColors.black,
                textColor: MyColors.white),
            SizedBox(
              height: 16 / 812 * height,
            ),
            LoginWithButton(
                title: "Log in using Google",
                onTap: () {},
                icon: MyIcons.google,
                color: MyColors.C_F0F5F2,
                textColor: MyColors.C_10405A),
            SizedBox(
              height: 60 / 812 * height,
            ),
            Center(
              child: Text(
                "Don’t have account? Sign up",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: MyColors.C_1F5460),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
