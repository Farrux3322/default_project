import 'package:default_project/utils/colors.dart';
import 'package:default_project/utils/my_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn extends StatelessWidget{
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {




    return Scaffold(
      backgroundColor: MyColors.C_E5E5E5,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColors.C_E5E5E5,
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            children: [
                  SvgPicture.asset(MyIcons.back),
                  Spacer(),
                  Image.asset(MyIcons.user,width: 40,height: 40,),
            ],
          ),
        ),
      ),
    );
  }



}