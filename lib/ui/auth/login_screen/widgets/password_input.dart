import 'package:default_project/utils/colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/my_icon.dart';

class PasswordInput extends StatefulWidget {
  PasswordInput({
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
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool quick = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            obscureText: quick,
            textInputAction: TextInputAction.done,
            cursorColor: MyColors.white,
            cursorHeight: 20,
            cursorWidth: 1.5,
            keyboardType: TextInputType.visiblePassword,
            onChanged: (value) {},
            onSubmitted: (value) {},
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: MyColors.black,
            ),
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Icon(quick ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    quick = !quick;
                  });
                },
              ),
              alignLabelWithHint: true,
              prefixIcon: SvgPicture.asset(MyIcons.password),
              prefixIconConstraints: const BoxConstraints(
                minHeight: 15,
                minWidth: 11.67,
              ),
              hintText: widget.title,
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
