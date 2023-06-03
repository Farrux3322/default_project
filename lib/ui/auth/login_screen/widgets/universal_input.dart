import 'package:default_project/utils/colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UniversalInput extends StatelessWidget {
  UniversalInput({
    Key? key,
    required this.title,
    required this.iconPath,
    required this.type,
    this.isPassword = false,
  }) : super(key: key);

  final String title;
  final String iconPath;

  final TextInputType type;
  bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            obscureText: isPassword,
            textInputAction: TextInputAction.done,
            cursorColor: MyColors.white,
            cursorHeight: 20,
            cursorWidth: 1.5,
            keyboardType: type,
            onChanged: (value) {},
            onSubmitted: (value) {},
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: MyColors.black,
            ),
            decoration: InputDecoration(
              prefixIcon: SvgPicture.asset(iconPath),
              prefixIconConstraints: const BoxConstraints(
                minHeight: 15,
                minWidth: 11.67,
              ),
              hintText: title,
              hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: MyColors.C_879EA4,
              ),
              fillColor: Colors.red,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              // errorText: "Error",
              // enabled: false,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                  width: 1,
                  color: MyColors.C_879EA4,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                  width: 1,
                  color: MyColors.C_879EA4,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                  width: 1,
                  color: MyColors.C_879EA4,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                  width: 1,
                  color: MyColors.C_879EA4,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                  width: 1,
                  color: MyColors.C_879EA4,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
