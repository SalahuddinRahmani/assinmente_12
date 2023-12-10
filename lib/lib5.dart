import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://aqeedeh.com/book/view/280/%D8%AA%D8%B1%D8%AC%D9%85%D9%87%20%D8%B5%D8%AD%DB%8C%D8%AD%20%D8%A8%D8%AE%D8%A7%D8%B1%DB%8C');
void main(){
 runApp(MaterialApp(home: Lib5(),));
}

class Lib5 extends StatefulWidget {
  const Lib5({super.key});

  @override
  State<Lib5> createState() => _Lib5State();
}

class _Lib5State extends State<Lib5> {
  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
         backgroundColor: Color.fromRGBO(2, 55, 77, 1),
         appBar: AppBar(
           centerTitle: true,
           backgroundColor: Color.fromRGBO(2, 66,77, 1),
           title: Text(

             "url_launcher",
             style: TextStyle(fontSize: 33),
           ),
         ),
         body: Center(
           child: MaterialButton(
             color: Colors.blue,
             height: 55,
             // color:   Color.fromRGBO(10, 55,70, 1.0),
             onPressed: _launchUrl,
             child: Text(
               textAlign:TextAlign.center,
               'More information!',style: TextStyle(color: Colors.white,fontSize: 30),),
           ),
         ),
       );

  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}









