import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/my_icon.dart';

class MyList extends StatelessWidget {
  const MyList({Key? key, required this.imagePath, required this.title, required this.subtitle, required this.salary}) : super(key: key);


  final String imagePath;
  final String title;
  final String subtitle;
  final String salary;



  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(top: 8,right: 8,bottom: 8,left: 2),
      width: 343/375*width,
      height: 96/812*height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF22222A),
      ),
      child: Row(
        children: [
          Image.asset(imagePath,width: 88,height: 68,fit: BoxFit.fill,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
              SizedBox(height: 10,),
              Text(subtitle,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xFF6A6A6E)),),
              SizedBox(height: 10,),
              Text(salary,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),),
            ],
          ),
          Spacer(),
          Container(
            width: 90/343*width,
            height: 34/812*height,
            margin: EdgeInsets.symmetric(horizontal: 5,vertical: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Color(0xFF19191D),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(4),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF12C358),
                  ),
                  child: SvgPicture.asset(MyIcons.plus),

                ),
                SizedBox(width: 16,),
                Text("1",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),),
                SizedBox(width: 16,),
                Container(
                  margin: EdgeInsets.all(4),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFF73C54),
                  ),
                  child: SvgPicture.asset(MyIcons.minus),

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
