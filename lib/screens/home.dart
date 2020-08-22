import 'package:flutter/material.dart';
import '../amenities.dart';

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  static List<dynamic> arr = Amenities.amenities["path"];

//  final items = List<dynamic>.generate(5, (i) => {Row(children: <Widget>[
//    Ink.image(
//      image: AssetImage(Amenities.amenities["path"][i][0]),
//      width: 245,
//      height: 160,
//      child: InkWell(
//        onTap: () {},
//        child: Text(Amenities.amenities["name"][i][0]),
//      ),
//    ),
//    Ink.image(
//      image: AssetImage(Amenities.amenities["path"][i][1]),
//      width: 245,
//      height: 160,
//      child: InkWell(
//        onTap: () {},
//        child: Text(Amenities.amenities["name"][i][1]),
//      ),
//    )
//  ])});

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
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
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
                  child:
                      Text('Gradient Button', style: TextStyle(fontSize: 20)),
                ),
              ),
              new Container(
                child: const RaisedButton(
                    onPressed: null,
                    child:
                        Text('Enabled Button', style: TextStyle(fontSize: 20))),
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
                                      height: 160,
                                      width: 240,
                                    ),
                                    Opacity(
                                        opacity: 0.95,
                                        child: Container(
                                          height: 160.0,
                                          width: 240.0,
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
                                        height:160,
                                        width: 240,
                                        child:Align(alignment:Alignment.bottomCenter,
                                            child:Text(Amenities.amenities["name"][i][0]+"    >",style: TextStyle(fontSize:30, color: Colors.white),))
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
                                      height: 160,
                                      width: 240,
                                    ),
                                    Opacity(
                                        opacity: 0.95,
                                        child: Container(
                                          height: 160.0,
                                          width: 240.0,
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
                                        height:160,
                                        width: 240,
                                        child:Align(alignment:Alignment.bottomCenter,
                                            child:Text(Amenities.amenities["name"][i][1]+"    >",style: TextStyle(fontSize:30, color: Colors.white),))
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                      );
                    }),
              ),
            ),

            /*Row(
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
        ),*/
          ]),
    ));
  }
}
