import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class ScanningPage extends StatefulWidget {
  @override
  _ScanningPageState createState() => _ScanningPageState();
}

class _ScanningPageState extends State<ScanningPage> {
  Future<String> _qrResult = Future<String>.delayed(
    Duration(milliseconds: 100),
    () => 'Amenity',
  ); //scanner.scan();

  String checkInState = 'notCheckedIn';
  String description = '';
  List buttons = [];
  bool isAtCapacity = true;
  String amenity = '';

  @override
  Widget build(BuildContext context) {
    if(isAtCapacity){
      description ="Sorry, this area is currently full. You may click on 'Waitlist' to be notified when there is space available";
      buttons = <Widget>[
        Container(
          height: 60,
          child: RaisedButton(
            child: (Text('Cancel',
                style: TextStyle(fontSize: 28, color: Colors.white))),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular((30.0))),
          ),
        ),
        Container(
          height: 60,
          child: RaisedButton(
            child: (Text('Waitlist',
                style: TextStyle(fontSize: 28, color: Colors.white))),
            onPressed: () {
              setState(() {
                description = 'You will be notified when space is available';
                buttons=[];
              });
            },
            color: Colors.indigo,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular((30.0))),
          ),
        ),
      ];
    }
    else if (checkInState=='notCheckedIn'){
      description = '';
      buttons = <Widget>[
        Container(
          height: 60,
          child: RaisedButton(
            child: (Text('Cancel',
                style: TextStyle(fontSize: 28, color: Colors.white))),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular((30.0))),
          ),
        ),
        Container(
          height: 60,
          child: RaisedButton(
            child: (Text('Check-in',
                style: TextStyle(fontSize: 28, color: Colors.white))),
            onPressed: () {
              setState(() {
                checkInState='checkedIn';
              });
            },
            color: Colors.indigo,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular((30.0))),
          ),
        ),
      ];
    }else if(checkInState=='checkedIn'){
      description='Kindly remember to check out after using $amenity';
      buttons = <Widget>[
    Container(
    height: 60,
    child: RaisedButton(
    child: (Text('Check-out',
    style: TextStyle(fontSize: 28, color: Colors.white))),
    onPressed: () {
      setState(() {
        checkInState='checkedOut';
      });
    },
    color: Colors.indigo,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular((30.0))),
    ),
    )];
    } else if(checkInState=='checkedOut'){
      description='Thank you for using $amenity';
      buttons = <Widget>[
        Container(
          height: 60,
          child: RaisedButton(
            child: (Text('Back to home',
                style: TextStyle(fontSize: 28, color: Colors.white))),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.indigo,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular((30.0))),
          ),
        )];
    }

    return Scaffold(
        body: FutureBuilder<String>(
      future: _qrResult, // a previously-obtained Future<String> or null
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        List<Widget> children;
        if (snapshot.hasData) {
          amenity = snapshot.data;
          children = <Widget>[
            Text(
              amenity,
              style: TextStyle(fontSize: 32),
            ),
            Text(
              description,
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: buttons
            )
          ];
        } else if (snapshot.hasError) {
          children = <Widget>[
            Icon(
              Icons.error_outline,
              color: Colors.red,
              size: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text('Error: ${snapshot.error}'),
            )
          ];
        } else {
          children = <Widget>[Container()];
        }
        return Center(
          child: Container(
            padding: EdgeInsets.all(20),
            height: 400,
            width: double.infinity,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: children,
              ),
            ),
          ),
        );
      },
    ));
  }
}
