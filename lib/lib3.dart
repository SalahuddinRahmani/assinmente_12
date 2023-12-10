import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
void main(){
 runApp(MaterialApp(home: Lib3(),));
}

class Lib3 extends StatefulWidget {
  const Lib3({super.key});

  @override
  State<Lib3> createState() => _Lib3State();
}

class _Lib3State extends State<Lib3> {
  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
         backgroundColor: Color.fromRGBO(2, 55, 77, 1),
         appBar: AppBar(
           centerTitle: true,
           backgroundColor: Color.fromRGBO(2, 66,77, 1),
           title: Text(

             "Photo View",
             style: TextStyle(fontSize: 33),
           ),
         ),
         body: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("روی عکس دوبار سریع کلیک کنید",style: TextStyle(fontSize: 35,color: Colors.white70),),
               SizedBox(height: 20,),
               Container(
                 height:400,
                   width: 400,
                   child: PhotoView(
                     imageProvider: AssetImage("images/poster_cc42a7f9-acf0-4477-aae8-ad7d823c3c09.jpeg"),
                   )
               ),
             ],
           ),
         )
         ,
       );

  }
}