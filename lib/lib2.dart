import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: Lib2(),
  ));
}

class Lib2 extends StatefulWidget {
  const Lib2({super.key});

  @override
  State<Lib2> createState() => _Lib2State();
}

class _Lib2State extends State<Lib2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(2, 66,77, 1),
        title: Text(

          "Warning Alret",
          style: TextStyle(fontSize: 33),
        ),
      ),
      backgroundColor: Color.fromRGBO(2, 55, 77, 1),
      body: Center(
        child: MaterialButton(
            height: 55,
            child: Text(
              "Click here",
              style: TextStyle(fontSize: 33, color: Colors.white),
            ),
            color: Colors.lightBlue,
            onPressed: () {
              Alert(
                context: context,
                type: AlertType.warning,
                title: "! رمز اشتباه است",
                desc: ".شما سه بار رمز را اشتباه وارد کردید",
                buttons: [
                  DialogButton(
                    child: Text(
                      "OK",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () => Navigator.pop(context),
                    color: Color.fromRGBO(0, 179, 134, 1.0),
                  ),
                  DialogButton(
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () => Navigator.pop(context),
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(22, 116, 191, 1.0),
                      Color.fromRGBO(2, 77, 99, 1.0)
                    ]),
                  )
                ],
              ).show();
            }),
      ),
    );
  }
}
