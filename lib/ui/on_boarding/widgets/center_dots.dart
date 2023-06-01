import 'package:default_project/utils/colors.dart';
import 'package:flutter/material.dart';

class CenterDots extends StatelessWidget {
  const CenterDots({Key? key, required this.activeDotIndex}) : super(key: key);

  final int activeDotIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        if(activeDotIndex==index){
          return activeDot();
        }
        return inActiveDot();
      }),
    );
  }

  Widget activeDot() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      width: 20,
      height: 8,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: MyColors.C_407AFF,
      ),
    );
  }

  Widget inActiveDot() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: MyColors.C_DADADA,
      ),
    );
  }
}
