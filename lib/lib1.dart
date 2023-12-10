import 'package:flutter/material.dart';
import 'package:text_to_speech/text_to_speech.dart';

void main() {
  runApp(MaterialApp(
    home: Lib1(),
  ));
}

class Lib1 extends StatefulWidget {
  const Lib1({super.key});

  @override
  State<Lib1> createState() => _Lib1State();
}

class _Lib1State extends State<Lib1> {
  TextToSpeech ti = new TextToSpeech();
  TextEditingController c1 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(2, 55, 77, 1),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(2, 66, 77, 1),
        title: Text(
          "Text To Speech",
          style: TextStyle(fontSize: 33),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Enter a letter To Speech",
            style: TextStyle(fontSize: 25, color: Colors.white70),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                
                color: Colors.white70,
                border: Border.all(color: Colors.yellow) ,
                borderRadius: BorderRadius.all(Radius.circular(10))
               ),


              child: TextField(

                controller: c1,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),),
                    hintText: "Enter a Text:",),
                style: TextStyle(fontSize: 22,color: Colors.black)
              ),
            ),
          ),
          Container(
            height:50,
            width: 150,
            child: MaterialButton(

              color: Colors.blue,
              onPressed: () {
                ti.speak("${c1.text}");
              },
              child: Text("OK",style: TextStyle(fontSize: 20,color: Colors.white),),
            ),
          )
        ],
      ),
    );
  }
}
