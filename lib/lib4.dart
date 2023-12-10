import 'dart:math';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

const defaultPlayerCount = 4;
void main() {
  runApp(MaterialApp(
    home: Lib4(),
  ));
}

class Lib4 extends StatefulWidget {
  const Lib4({super.key});

  @override
  State<Lib4> createState() => _Lib4State();
}

class _Lib4State extends State<Lib4> {
  TextEditingController e1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(2, 55, 77, 1),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(2, 66, 77, 1),
        title: Text(
          "Englis Words",
          style: TextStyle(fontSize:34),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
             "1 : ${ nouns[Random().nextInt(100)]}",
              style: TextStyle(color: Colors.white, fontSize: 35),
            ),

            Text(
              "      2 : ${nouns.last}",
              style: TextStyle(color: Colors.white, fontSize: 35),
            ),
          ],
        ),
      ),
    );
  }
}
