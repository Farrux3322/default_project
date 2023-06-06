import 'package:default_project/ui/main_screen/main_screen.dart';
import 'package:default_project/ui/welcome/widgets/universal_input.dart';
import 'package:default_project/utils/colors.dart';
import 'package:default_project/utils/my_icon.dart';
import 'package:default_project/widgets/global_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final con = TextEditingController();
  bool isPasswordVisible = false;
  @override
  void initState() {
    con..addListener(() {
        setState(() {

        });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 0,
      ),
      backgroundColor: Colors.red,
      body: SafeArea(
        child:Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage(MyIcons.backgraund),
                  fit: BoxFit.fill,

                )

              ),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: Color(0xFF151418).withOpacity(0.9),
              ),
            ),
            ListView(
                children: [Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      SizedBox(height: 100/812*height,),
                      Text("BURGER BAR",style: TextStyle(fontSize: 52,fontWeight: FontWeight.w500,color: MyColors.white,fontFamily: "ARCENA"),),
                      SizedBox(height: height*28/812,),
                      Text("Войдите в свой профиль",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700,color: MyColors.white),),
                      Text("Войдите, чтобы продолжить",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: MyColors.C_6C7072),),
                      SizedBox(height: height*48/812,),
                      TextField(
                        style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white),
                        controller: con,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF22222A),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "maksimbest@mail.ru",
                            hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white),
                            prefixIcon: Container(
                                padding: EdgeInsets.symmetric(horizontal: 13,vertical: 17),
                                child: SvgPicture.asset(MyIcons.next)),
                            suffixIcon: con.text.isEmpty
                                ? Container(width: 0,)
                                : IconButton(
                              icon: Icon(Icons.close,color: Color(0xFFE1D24A),
                              ),
                              onPressed: (){
                                con.clear();
                              },
                            )
                        ),
                      ),
                      SizedBox(height: 21/812*height,),
                      TextField(
                        style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white),
                        decoration: InputDecoration(

                            filled: true,
                            fillColor: Color(0xFF22222A),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            prefixIcon: Container(
                                padding: EdgeInsets.symmetric(horizontal: 13,vertical: 17),
                                child: SvgPicture.asset(MyIcons.password)),
                            suffixIcon: IconButton(
                              icon: isPasswordVisible
                                  ? Icon(Icons.visibility_off,color: Color(0xFFE1D24A),)
                                  : Icon(Icons.visibility,color: Color(0xFFE1D24A),),
                              onPressed: (){
                                setState(() {
                                  isPasswordVisible = !isPasswordVisible;
                                });
                              },
                            )
                        ),
                        obscureText: isPasswordVisible,
                      ),
                      SizedBox(height: 33/812*height,),
                      Text("Или продолжите с помощью  ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),),
                      SizedBox(height: 45/812*height,),
                      Row(children: [
                        Expanded(flex: 1,child: Container(
                          width: 153/375*width,
                          height: 56/812*height,
                          margin: EdgeInsets.symmetric(horizontal: 21,vertical: 13),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xFF22222A),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(MyIcons.facebook,width: 30,height: 30,),
                              SizedBox(width: 12,),
                              Text("Facebook",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),)
                            ],
                          ),
                        )),
                        Expanded(flex: 1,child: Container(
                          width: 153/375*width,
                          height: 56/812*height,
                          margin: EdgeInsets.symmetric(horizontal: 21,vertical: 13),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xFF22222A),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(MyIcons.google,width: 37,height: 49,),
                              SizedBox(width: 12,),
                              Text("Google",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),)
                            ],
                          ),
                        )),
                      ],),
                      SizedBox(height: 44/812*height,),
                      Text("Забыли пароль?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFFE1D24A)),),
                      SizedBox(height: 32/812*height,),
                      GlobalButton(title: "Войти", onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return const MainScreen();
                          }),
                        );
                      }),
                    ],
                  ),
                ),
                ]
            ),
          ],
        )
      ),
    );
  }
}
