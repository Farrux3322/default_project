import 'package:default_project/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UniversalInput extends StatelessWidget {
  const UniversalInput({
    Key? key,
    required this.isObscure,
    required this.obscureTap,
    required this.prefixIconPath,
    required this.hintText,
  }) : super(key: key);

  final bool isObscure;
  final String hintText;
  final VoidCallback obscureTap;
  final String prefixIconPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        obscureText: isObscure,
        decoration: InputDecoration(
        border: OutlineInputBorder(),
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            prefixIcon: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 17),
                child: SvgPicture.asset(prefixIconPath)),
            prefixStyle: TextStyle(height: 20),
            suffixIcon: IconButton(
              icon: Icon(isObscure ? Icons.visibility : Icons.visibility_off),
              onPressed: obscureTap,
            )),
      ),
    );
  }
}