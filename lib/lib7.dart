import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
void main(){
 runApp(MaterialApp(home: Lib7(),));
}

class Lib7 extends StatefulWidget {
  const Lib7({super.key});

  @override
  State<Lib7> createState() => _Lib7State();
}

class _Lib7State extends State<Lib7> {
  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
      backgroundColor: Color.fromRGBO(2, 55, 77, 1),
           appBar: AppBar(
             centerTitle: true,
             backgroundColor: Color.fromRGBO(2, 66,77, 1),
             title: Text(

               "Shimmer",
               style: TextStyle(fontSize: 33),
             ),
           ),
           body:Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,

             children: [
             SizedBox(
               width: 200.0,
               height: 100.0,
               child: Shimmer.fromColors(
                 baseColor: Colors.red,
                 highlightColor: Colors.yellow,
                 child: Text(
                   'WASSA Center',
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     fontSize: 40.0,
                     fontWeight:
                     FontWeight.bold,
                   ),
                 ),
               ),
             ),



           ],),
         )
         );

  }
}