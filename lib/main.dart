import 'package:default_project/ui/home/widgets/place_holder.dart';
import 'package:flutter/material.dart';
bool check = true;
String phone = "";
String password = "";
void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  TextEditingController textEditingControllerPassword  = TextEditingController();
  TextEditingController textEditingControllerPhone  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: check ?
      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16,vertical: 20),
          child: Column(
            children: [
              Text("Login",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.black),),
              SizedBox(height: 30,),
              TextField(
                controller: textEditingControllerPhone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText:  "Phone number",
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: textEditingControllerPassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText:  "Password",
                ),
              ),
              SizedBox(height: 60,),
              Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.blue,
                  ),
                  child: TextButton(onPressed: (){}, child: Text("Next",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.black),))),
              SizedBox(height: 6,),
              GestureDetector(
                  onTap: (){
                    check=!check;
                    setState(() {

                    });

                  },
                  child: Text("Registr page",style: TextStyle(fontSize: 18,color: Colors.green),)),
            ],
          ),
        ),
      ):
        Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16,vertical: 20),
            child: Column(
              children: [
                Text("Registr",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.black),),
                SizedBox(height: 30,),
                TextField(
                  controller: textEditingControllerPhone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText:  "Phone number",
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: textEditingControllerPassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText:  "Password",
                  ),
                ),
                SizedBox(height: 60,),
                Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.blue,
                    ),
                    child: TextButton(onPressed: (){
                      phone=textEditingControllerPhone.text;
                      password = textEditingControllerPassword.text;
                      check=!check;

                      textEditingControllerPhone.dispose();
                      textEditingControllerPassword.dispose();
                      setState(() {

                      });
                    }, child: Text("Next",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.black),))),


              ],
            ),
          )
        )
    );
  }
}
