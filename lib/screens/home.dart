import 'package:flutter/material.dart';

import 'chat.dart';
import 'qr-scanner.dart';
import 'amenity.dart';

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
    final GlobalKey<ScaffoldState> _scaffoldKey =  GlobalKey<ScaffoldState>();

    // TODO: implement build
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 5.0,
        title: Row(

          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/logo.png', height: 24,),
            ),
            Text('KrisFlyer', style: TextStyle(fontSize: 32),),
          ],
        ),
        centerTitle: true,
        iconTheme: new IconThemeData(color: Colors.black),
      ),
      drawer: Drawer( child: Column(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              )),
          Expanded(
            flex: 1,
            child: ListView(
              children: [
                ListTile(
                  title: Text("RAGHAV SHAHPURIA"),
                  dense: true,

                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView(children: [
              ListTile(
                title: Text("Profile"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("My Bookings"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("About"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Settings"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Contact us"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Home"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Home"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              )
            ]),
          )
        ],
      ),
      ),
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
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AmenityPage()),
              );
            },
            child: Text('Gradient Button', style: TextStyle(fontSize: 20)),

          ),
          RaisedButton(
              onPressed: null,
              child: Text('Enabled Button', style: TextStyle(fontSize: 20))),
        ]),
      ] /*child: Align(
          alignment: Alignment.topCenter,
          child: titleSection
        ),*/
          ),
    ),
    floatingActionButton: (FloatingActionButton(child: Icon(Icons.question_answer), onPressed: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ChatPage()),
      );
    },)),);
  }
}
