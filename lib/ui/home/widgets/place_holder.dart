// import 'package:flutter/material.dart';
//
// class PlaceHolderWidget extends StatelessWidget {
//   const PlaceHolderWidget({Key? key, required this.title, required this.titleColor, required this.color}) : super(key: key);
//
//
//   final String title;
//   final Color titleColor;
//   final Color color;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 10),
//       height: 64,
//       width: 64,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: color,
//       ),
//       child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateColor) ,onPressed: (){},child: Center(child: Text(title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800,color: titleColor),)),),
//     );
//   }
// }