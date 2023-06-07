import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF3A0CA3),
        appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: Color(0xFF3A0CA3),
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 7),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFF72585),
                      ),
                      child: Center(
                        child: Image.asset("assets/images/img.png"),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Hoşgeldin",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white.withOpacity(0.6)),),
                      Text("Doğukan Erel",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),

                    ],),
                    Spacer(),
                    Icon(Icons.settings),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(left: 20,right: 28,top: 30,bottom: 30),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                    padding: EdgeInsets.symmetric(horizontal: 8,),
                    height: 30,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Spacer(),
                        Text("250",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700,color: Colors.black),)
                      ],
                    ),
                  ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8,),
                      height: 30,
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xFfF72585),
                      ),
                      child: Row(
                        children: [
                          Text("200",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700,color: Colors.white),),
                          Spacer(),
                        ],
                      ),
                    )
                  ]
                ),
                Row(
                  children: [
                    Spacer(),
                    Text("İndirim kuponu için son 50 puan!",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w400,color: Colors.white),),
                  ],
                ),
                SizedBox(height: 46,),
                Ink(
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xFF46B658),
                  ),
                  child: InkWell(
                    onTap: (){},
                    child: Center(child: Text("Favorilerim",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white),),),
                  ),
                ),
                SizedBox(height: 44,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 14),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF4229A2),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Son Siparişlerim",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.white),),
                        ],
                      ),
                      SizedBox(height: 30,),
                      Row(
                        children: [
                          SvgPicture.asset("assets/svg/arrow.svg"),
                          SizedBox(width: 10,),
                          Text("Sandy Ridge Camping Canton",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white),),
                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        children: [
                          SvgPicture.asset("assets/svg/arrow.svg"),
                          SizedBox(width: 10,),
                          Text("Sandy Ridge Camping Canton",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white),),
                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        children: [
                          SvgPicture.asset("assets/svg/arrow.svg"),
                          SizedBox(width: 10,),
                          Text("Sandy Ridge Camping Canton",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white),),
                        ],
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 32,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 14),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF4229A2),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 8,),
                          Text("Adreslerim",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.white),),
                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        children: [
                         SvgPicture.asset("assets/svg/arrow2.svg"),
                          SizedBox(width: 10,),
                          Text("Ev Adresi, Muğla/Menteşe",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white),),
                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        children: [
                          SvgPicture.asset("assets/svg/arrow2.svg"),
                          SizedBox(width: 10,),
                          Text("İş Adresi, Muğla/Menteşe",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white),),
                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        children: [
                          SvgPicture.asset("assets/svg/arrow2.svg"),
                          SizedBox(width: 10,),
                          Text("Adres, Ankara/Yenimahalle",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white),),
                        ],
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 40,),
                Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.transparent
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset("assets/svg/home.svg"),
                      SvgPicture.asset("assets/svg/c.svg"),
                      SvgPicture.asset("assets/svg/buy.svg"),
                      SvgPicture.asset("assets/svg/profil.svg"),
                    ],
                  ),
                )
              ],
            )
              ),
          ],
        ),
      ),
    );
  }
}
