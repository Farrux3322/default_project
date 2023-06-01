import 'package:default_project/utils/colors.dart';
import 'package:flutter/material.dart';

import 'center_dots.dart';

class PageContent extends StatelessWidget{
  const PageContent({super.key, required this.imagePath, required this.title, required this.subtitle, required this.height, required this.imageHeight, required this.active});

  final String imagePath;
  final String title;
  final String subtitle;
  final double height;
  final double imageHeight;
  final int active;

  @override
  Widget build(BuildContext context) {

    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(imagePath,height: height*imageHeight/812,),
        SizedBox(height: 58/812*height,),
        Text(title,style: const TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
        SizedBox(height: 18/812*height,),
        Text(subtitle,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: MyColors.C_87898E),),
        SizedBox(height: 21/812*height,),
        CenterDots(activeDotIndex: active),
      ],
    );
  }



}