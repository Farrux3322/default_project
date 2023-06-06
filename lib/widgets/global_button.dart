import 'package:default_project/utils/colors.dart';
import 'package:flutter/material.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({Key? key, required this.title, required this.onTap})
      : super(key: key);

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Container(
        height: 48,
        width: 327,
        child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                )
              ),
              backgroundColor: MaterialStatePropertyAll <Color>(Color(0xFFE1D24A),
          )),
          child: Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),),
          onPressed: onTap,
        ),
      )
    );
  }
}