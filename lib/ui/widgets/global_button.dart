import 'package:flutter/material.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton(
      {Key? key,
      required this.title,
      required this.onTap,
      required this.height,
      required this.width,
       required this.buttonColor, required this.textColor})
      : super(key: key);

  final String title;
  final double height;
  final double width;
  final VoidCallback onTap;
  final Color buttonColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Ink(
          height: height * 50 / 812,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: buttonColor,
          ),
          child: InkWell(
            onTap: onTap,
          child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text(
                   title,
                   style:  TextStyle(
                       fontSize: 16,
                       fontWeight: FontWeight.w600,
                       fontFamily: 'Sora',
                       color: textColor),
                 ),
               ],
             )
          ),
        ));
  }
}

