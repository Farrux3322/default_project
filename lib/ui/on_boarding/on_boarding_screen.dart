import 'package:default_project/ui/auth/sign_in.dart';
import 'package:default_project/ui/on_boarding/widgets/page_content.dart';
import 'package:default_project/ui/widgets/global_button.dart';
import 'package:default_project/utils/colors.dart';
import 'package:default_project/utils/my_icon.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.C_E5E5E5,
        elevation: 0,
      ),
      backgroundColor: MyColors.C_E5E5E5,
      body: Column(
        children: [
          Expanded(
              child: PageView(
                children: [
                  PageContent(
                      active: 0,
                      imagePath: MyIcons.ils1,
                      title: "Spend & Save With Spare",
                      subtitle: '''With spare, you can for bills,
 food, entertainment, utilities
              and still save  ''',
                      height: height,
                      imageHeight: 288),
                  PageContent(
                    active: 1,
                    imagePath: MyIcons.ils2,
                    title: "Spare Is Easy & Secure",
                    subtitle: '''spare is easy to use and all your
      transactions are secured''',
                    height: height,
                    imageHeight: 281,),
                  PageContent(
                      active: 2,
                      imagePath: MyIcons.ils3,
                      title: "Send Money With Spare",
                      subtitle: '''Transfer money easily to friends
  and families on your contact
             list using spare ''',
                      height: height,

                      imageHeight: 240),

                ],
              )),

          SizedBox(height: 90 / 812 * height,),

          GlobalButton(
              title: "Get Started",
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return const SignIn();
                  }),
                );
              }),
          SizedBox(height: 58 / 812 * height,)
        ],
      ),
    );
  }
}
