import 'package:flutter/material.dart';

import '../../utils/colors.dart';


class TextFields extends StatelessWidget {
  const TextFields({Key? key, required this.title, required this.width, required this.height, required this.iconLeft, this.iconRight, required this.type, required this.hide, }) : super(key: key);

  final String title;
  final double width;
  final double height;
  final Icon iconLeft;
  final Icon? iconRight;
  final TextInputType type;
  final bool hide;


  @override
  Widget build(BuildContext context) {
    return  Container(
      height: height*80/812,
      width: width*319/375,
      margin: const  EdgeInsets.only(right: 28),
      child: TextField(
        obscureText: hide,
        decoration: InputDecoration(
          prefixIcon: iconLeft,
          suffixIcon: iconRight,
          hintText: title,
          hintStyle: const TextStyle(
            fontSize: 16,
            fontFamily: 'Sora',
            fontWeight: FontWeight.w400,
            color: AppColor.C_879EA4,
          ),
          contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal: 40),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(
                  width: 1,
                  color: Color(0xFF1F5460)
              )
          ),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide:const BorderSide(
                  width: 1,
                  color: Color(0xFF1F5460)
              )
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide:const BorderSide(
                  width: 1,
                  color: Color(0xFF1F5460)
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide:const BorderSide(
                  width: 1,
                  color: Color(0xFF1F5460)
              )
          ),
        ),
        style: const TextStyle(
          fontSize: 16,
          fontFamily: 'Sora',
          fontWeight: FontWeight.w400,
          color: AppColor.C_879EA4,
        ),
        keyboardType:  type,
      ),
    );

  }
}
