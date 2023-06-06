import 'package:default_project/ui/main_screen/widgets/my_list.dart';
import 'package:default_project/ui/welcome/welcome_screen.dart';
import 'package:default_project/utils/my_icon.dart';
import 'package:default_project/widgets/global_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 56,right: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFE1D24A),
                            ),
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (BuildContext context) {
                                      return const WelcomeScreen();
                                    }),
                                  );
                                },
                                child: Center(child: SvgPicture.asset(MyIcons.back),)),
                          ),
                          SizedBox(width: 80/375*width,),
                          const Text("Детали заказа",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white),),
                        ],
                      ),
                      SizedBox(height: 57/812*height,),
                      SizedBox(
                        height: 370,
                        child: ListView(
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(12),
                                  width: 343/375*width,
                                  height: 96/812*height,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFF22222A),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(MyIcons.burger,width: 88,height: 68,),
                                      const Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Чикен Бургер",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
                                          SizedBox(height: 10,),
                                          Text("Изящный бургер",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xFF6A6A6E)),),
                                          SizedBox(height: 10,),
                                          Text("₽160",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),),
                                        ],
                                      ),
                                      const Spacer(),
                                      Container(
                                        width: 90/343*width,
                                        height: 34/812*height,
                                        margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 7),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(24),
                                          color: const Color(0xFF19191D),
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.all(4),
                                              width: 20,
                                              height: 20,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xFF12C358),
                                              ),
                                              child: SvgPicture.asset(MyIcons.plus),

                                            ),
                                            const SizedBox(width: 16,),
                                            const Text("1",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),),
                                            const SizedBox(width: 16,),
                                            Container(
                                              margin: const EdgeInsets.all(4),
                                              width: 20,
                                              height: 20,
                                              decoration: const BoxDecoration(
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
                                ),
                                const SizedBox(height: 20,),
                                MyList(imagePath: MyIcons.free, title: "Картошка Фри", subtitle: "Хрустят отлично", salary: "₽100"),
                                const SizedBox(height: 20,),
                                MyList(imagePath: MyIcons.kokteyl, title: "Молочный коктейль", subtitle: "Отлично подойдет", salary: "₽120"),
                                const SizedBox(height: 20,),
                                MyList(imagePath: MyIcons.free, title: "Картошка Фри", subtitle: "Хрустят отлично", salary: "₽100"),
                              ],
                            )
                          ],
                        ),
                      ),


                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 24),
                  height: 220/812*height,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                    color: Color(0xFF18171C),
                  ),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Text("Стоимость всех товаров",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white),),
                          Spacer(),
                          Text("₽380",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.white),),
                        ],
                      ),
                      const SizedBox(height: 14,),
                      const Row(
                        children: [
                          Text("Чаевые курьеру",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white),),
                          Spacer(),
                          Text("₽30",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.white),),
                        ],
                      ),
                      const SizedBox(height: 14,),
                      const Row(
                        children: [
                          Text("Общая стоимость",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white),),
                          Spacer(),
                          Text("₽410",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.white),),
                        ],
                      ),
                      const SizedBox(height: 50,),
                      GlobalButton(title: "Оплатить", onTap: (){}),

                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: height*67/812,
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    color: Color(0xFF18171C),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24),bottomRight: Radius.circular(24)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(MyIcons.home),
                      SvgPicture.asset(MyIcons.sumka),
                      Container(
                        width: 40,
                        height: 40,
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xFFE1D24A),
                        ),
                        child: Center(child: SvgPicture.asset(MyIcons.arava),),
                      ),
                      SvgPicture.asset(MyIcons.yurak),
                      SvgPicture.asset(MyIcons.stiker),


                    ],
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
