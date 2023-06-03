import 'package:default_project/ui/auth/login_screen/login_screen.dart';
import 'package:default_project/ui/auth/login_screen/widgets/login_button.dart';
import 'package:default_project/ui/auth/login_screen/widgets/password_input.dart';
import 'package:default_project/ui/auth/login_screen/widgets/universal_input.dart';
import 'package:default_project/ui/auth/widget/global_button.dart';
import 'package:default_project/utils/colors.dart';
import 'package:default_project/utils/my_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      //resizeToAvoidBottomInset: false,
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
        Expanded(
          child: Column(
            children: [
              SizedBox(
                height: 10 / 812 * height,
              ),
              Text(
                "Create account",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: MyColors.C_1F5460),
              ),
              SizedBox(
                height: 10 / 812 * height,
              ),
              Text(
                "Sign up to get started!",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: MyColors.C_879EA4),
              ),
              SizedBox(
                height: 25 / 812 * height,
              ),
              UniversalInput(
                  title: "Loki Laufeyson",
                  iconPath: MyIcons.user,
                  type: TextInputType.text),
              SizedBox(
                height: 20 / 812 * height,
              ),
              UniversalInput(
                  title: "Email address",
                  iconPath: MyIcons.address,
                  type: TextInputType.emailAddress),
              SizedBox(
                height: 20 / 812 * height,
              ),
              PasswordInput(
                  title: "Password",
                  iconPath: MyIcons.password,
                  type: TextInputType.text),
              SizedBox(
                height: 20 / 812 * height,
              ),
              PasswordInput(
                  title: "Confirm password",
                  iconPath: MyIcons.password,
                  type: TextInputType.text),
              SizedBox(
                height: 20 / 812 * height,
              ),
              GlobalButton(
                  title: "Sign up",
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const LoginScreen();
                      }),
                    );
                  }),
              SizedBox(
                height: 20 / 812 * height,
              ),
              LoginWithButton(
                  title: "Sign up using Apple",
                  onTap: () {},
                  icon: MyIcons.apple,
                  color: MyColors.black,
                  textColor: MyColors.white),
              SizedBox(
                height: 20 / 812 * height,
              ),
              LoginWithButton(
                  title: "Sign up using Google",
                  onTap: () {},
                  icon: MyIcons.google,
                  color: MyColors.C_F0F5F2,
                  textColor: MyColors.C_10405A),
              SizedBox(
                height: 30 / 812 * height,
              ),
              Center(
                child: Text(
                  "Already member? Log in",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: MyColors.C_1F5460),
                ),
              ),
              SizedBox(
                height: 30 / 812 * height,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
