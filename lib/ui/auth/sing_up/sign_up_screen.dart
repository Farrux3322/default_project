import 'dart:ui';

import 'package:default_project/ui/auth/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/colors.dart';
import '../../../utils/images.dart';
import '../../welcome/welcome_screen.dart';
import '../../widgets/button.dart';
import '../../widgets/global_button.dart';
import '../../widgets/text_field.dart';



class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.C_F8FAFC,
        elevation: 0,
        leading: Container(
          margin:const  EdgeInsets.only(left: 24),
          child: IconButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
              return const WelcomeScreen();
            }));
          }, icon:const Icon(Icons.arrow_back,color: AppColor.C_000000,),),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height*30/812,),
            Container(
              margin:const EdgeInsets.only(left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Create account',style: TextStyle(fontSize: 32,fontFamily: 'Sora',fontWeight: FontWeight.w600,color: AppColor.C_1F5460,),),
                  SizedBox(height: height*16/812,),
                  const   Text('Sign up to get started!',style: TextStyle(fontWeight: FontWeight.w400,fontFamily: 'Sora',fontSize: 16,color: AppColor.C_879EA4),),
                  SizedBox(height: height*42/812,),
                  TextFields(title: 'Loki Laufeyson', width: width, height: height, iconLeft:const Icon(Icons.person_outline_outlined), type: TextInputType.emailAddress, hide: false,),
                  TextFields(title: 'Email address', width: width, height: height, iconLeft:const Icon(Icons.message), type: TextInputType.emailAddress, hide: false,),
                  TextFields(title: 'Password', width: width, height: height, iconLeft:const Icon(Icons.lock),iconRight:const Icon(Icons.remove_red_eye), type: TextInputType.visiblePassword, hide: true,),
                  TextFields(title: 'Confirm password', width: width, height: height, iconLeft:const Icon(Icons.lock),iconRight:const Icon(Icons.remove_red_eye), type: TextInputType.visiblePassword, hide: true,),

                  SizedBox(height: height*24/812,),
                  GlobalButton(title: 'Sign up', onTap: (){}, height: height, width: width, buttonColor: AppColor.C_FFCA42, textColor: AppColor.C_10405A),
                  SizedBox(height: height*16/812,),
                  Button(title: 'Log in using Apple', onTap: (){}, height: height, width: width, buttonColor: AppColor.C_000000, textColor: AppColor.C_FFFFFF, icon: AppImages.apple,),
                  SizedBox(height: height*16/812,),
                  Button(title: 'Log in using Google', onTap: (){}, height: height, width: width, buttonColor: AppColor.C_F0F5F2, textColor: AppColor.C_10405A, icon: AppImages.google),
                  SizedBox(height: height*28/812,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (BuildContext context) {
                                return const LoginScreen();
                              }),
                            );
                          },
                          child: Text('Don’t have account? Log In')
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}
