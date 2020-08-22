import 'package:flutter/material.dart';
import 'package:sia_app/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  //titleSectionWidget


  /*Widget titleSection = Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),

          child: Text(
            "SIA welcomes you!",
            style: TextStyle(
              color: new Color.fromARGB(255, 29, 72, 134),
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
        )
      ],
    ),
  );*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIA AppChallenge',
      theme: ThemeData(
        fontFamily: 'Sia',
        primaryColor: new Color.fromARGB(255, 29, 72, 134),
      ),
      home: MyHomePage(),
    );
  }
}
