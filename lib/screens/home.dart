import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  Widget titleSection = Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Welcome!",
            style: TextStyle(
              color: new Color.fromARGB(255, 29, 72, 134),
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
        )
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
      child: Column(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            titleSection,
            new Image(
                image: new AssetImage("assets/source.gif"),
                height: 250,
                width: 250)
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          new Container(
            margin: EdgeInsets.fromLTRB(20, 20, 100, 20),
            child: const RaisedButton(
              onPressed: null,
              child: Text('Gradient Button', style: TextStyle(fontSize: 20)),
            ),
          ),
          new Container(
            child: const RaisedButton(
                onPressed: null,
                child: Text('Enabled Button', style: TextStyle(fontSize: 20))),
          )
        ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Ink.image(
              image: AssetImage('assets/amenities/booth.jpg'),
              width: 245,
              height: 160,
              child: InkWell(
                onTap: () {},
                child: Text('Booth'),
              ),
            ),
            Ink.image(
              image: AssetImage('assets/amenities/buggy.jpg'),
              width: 245,
              height: 160,
              child: InkWell(
                onTap: () {},
                child: Text('Buggy'),
              ),
            )
            /*IconButton(
              icon: Image.asset('assets/amenities/booth.jpg'),
              iconSize: 250,
              onPressed: () {},
            )*/

            ],
        ),
        Row(

        )
      ]),
    ));
  }
}
