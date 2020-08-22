import 'package:flutter/material.dart';
import 'package:sia_app/screens/home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Food Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title:'Food Menu'),
      );
    )
  }}