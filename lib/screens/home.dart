import 'package:flutter/material.dart';
import '../amenities.dart';

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
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                titleSection,
                new Image(
                    image: new AssetImage("assets/source.gif"),
                    height: MediaQuery.of(context).size.width*0.25,
                    width: MediaQuery.of(context).size.width*0.25)
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              new Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: const RaisedButton(
                  onPressed: null,
                  child:
                      Text('Book a facility', style: TextStyle(fontSize: 20)),
                ),
              ),
              new Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: const RaisedButton(
                    onPressed: null,
                    child:
                        Text('Select lounge', style: TextStyle(fontSize: 20))),
              )
            ]),
            Container(
              child: Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, i) {
                      return Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              InkWell(
                                onTap: () {},

                                child: Stack(
                                  children: <Widget>[


                                    Image.asset(
                                      Amenities.amenities["path"][i][0],
                                      height: 160.0/240*MediaQuery.of(context).size.width*0.5,
                                      width: MediaQuery.of(context).size.width*0.5,
                                    ),
                                    Opacity(
                                        opacity: 0.95,
                                        child: Container(
                                          height: 160.0/240*MediaQuery.of(context).size.width*0.5,
                                          width: MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              gradient: LinearGradient(
                                                  begin: FractionalOffset.topCenter,
                                                  end: FractionalOffset.bottomCenter,
                                                  colors: [
                                                    Colors.grey.withOpacity(0.0),
                                                    Colors.black,
                                                  ],
                                                  stops: [
                                                    0.0,
                                                    1.0
                                                  ])),
                                        )
                                    ),
                                    Container(
                                        height: 160.0/240*MediaQuery.of(context).size.width*0.5,
                                        width: MediaQuery.of(context).size.width*0.5,
                                        child:Align(alignment:Alignment.bottomCenter,
                                            child:Text(Amenities.amenities["name"][i][0]+"    >",style: TextStyle(fontSize:24, color: Colors.white),))
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Stack(
                                  children: <Widget>[
                                    Image.asset(
                                      Amenities.amenities["path"][i][1],
                                      height: 160.0/240*MediaQuery.of(context).size.width*0.5,
                                      width: MediaQuery.of(context).size.width*0.5,
                                    ),
                                    Opacity(
                                        opacity: 0.95,
                                        child: Container(
                                          height: 160.0/240*MediaQuery.of(context).size.width*0.5,
                                          width: MediaQuery.of(context).size.width*0.5,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              gradient: LinearGradient(
                                                  begin: FractionalOffset.topCenter,
                                                  end: FractionalOffset.bottomCenter,
                                                  colors: [
                                                    Colors.grey.withOpacity(0.0),
                                                    Colors.black,
                                                  ],
                                                  stops: [
                                                    0.0,
                                                    1.0
                                                  ])),
                                        )
                                    ),
                                    Container(
                                        height: 160.0/240*MediaQuery.of(context).size.width*0.5,
                                        width: MediaQuery.of(context).size.width*0.5,
                                        child:Align(alignment:Alignment.bottomCenter,
                                            child:Text(Amenities.amenities["name"][i][1]+"    >",style: TextStyle(fontSize:24, color: Colors.white),))
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                      );
                    }),
              ),
            ),
          ]),
    ),
    floatingActionButton: (FloatingActionButton(
      backgroundColor: Color.fromARGB(255, 252, 177, 48),
      child: Icon(Icons.question_answer), onPressed: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ChatPage()),
      );
    },)),);
  }
}
