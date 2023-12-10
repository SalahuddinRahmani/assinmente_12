import 'package:assinmente_12/lib1.dart';
import 'package:assinmente_12/lib2.dart';
import 'package:assinmente_12/lib3.dart';
import 'package:assinmente_12/lib4.dart';
import 'package:assinmente_12/lib5.dart';
import 'package:assinmente_12/lib6.dart';
import 'package:assinmente_12/lib7.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget listo(String text,var onTab){
   return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: Container(
        height: 66,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.teal),
          gradient:LinearGradient(
            colors: [
              Color.fromRGBO(22, 34, 42, 1),
              Color.fromRGBO(10, 80, 88, 1.0),


            ],
          ),

          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),bottomRight: Radius.circular(10), ),
        ),
        child: Container(

          child: ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return onTab;
              }));
            },
            title: Text(
              text,
              style: TextStyle(color: Colors.white,fontSize: 33),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    
    
    
    
    
    return  Scaffold(
          backgroundColor: Color.fromRGBO(2,80,90, 1.0),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:  Color.fromRGBO(22, 34, 42, 1),
        title: Text(" 7 best Library Of Flutter",style: TextStyle(fontSize: 35),),
      ),
      body: Column(
        children: [
     listo(' 1: speech',Lib1()),
     listo(' 2:  Alert',Lib2()),
     listo(' 3:  Photo View',Lib3()),
     listo(' 4:  Englis Words',Lib4()),
     listo(' 5:  url_launcher',Lib5()),
     listo(' 6:  Font_awesome',Lib6()),
     listo(' 7:  Shimmer',Lib7()),
        ],
      ),
    );
  }
}
