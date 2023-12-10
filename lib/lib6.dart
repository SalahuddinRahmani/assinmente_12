import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
 runApp(MaterialApp(home: Lib6(),));
}

class Lib6 extends StatefulWidget {
  const Lib6({super.key});

  @override
  State<Lib6> createState() => _Lib6State();
}

class _Lib6State extends State<Lib6> {
  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
         appBar: AppBar(
           centerTitle: true,
           backgroundColor: Color.fromRGBO(2, 55, 77, 1),
           title: Text(

             "Font_awesome",
             style: TextStyle(fontSize: 33),
           ),
         ),
         backgroundColor: Color.fromRGBO(2, 66,77, 1),
         body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
           IconButton(style: ButtonStyle(),color: Colors.blue,onPressed: (){},       icon: FaIcon(FontAwesomeIcons.gamepad), ),
           SizedBox(height: 30,),
           IconButton(color: Colors.red,onPressed: (){},       icon: FaIcon(FontAwesomeIcons.faceAngry), ),
             SizedBox(height: 30,),
           IconButton(color: Colors.teal,onPressed: (){},       icon: FaIcon(FontAwesomeIcons.galacticSenate), ),
             SizedBox(height: 30,),
           IconButton(color: Colors.lightGreen,onPressed: (){},       icon: FaIcon(FontAwesomeIcons.baby), ),
             SizedBox(height: 30,),
           IconButton(color: Colors.orange,onPressed: (){},       icon: FaIcon(FontAwesomeIcons.walkieTalkie), ),
         ],),
       ),);

  }
}