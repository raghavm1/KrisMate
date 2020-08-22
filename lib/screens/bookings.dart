import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class BookingsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BookingsPageState();
  }
}

List pastBookings = [
  {
    "Amenity": "Shower Rooms",
    "Date": DateTime.fromMillisecondsSinceEpoch(213733672382),
    "Time": TimeOfDay.fromDateTime(DateTime.now())
  },
  {
    "Amenity": "Gaming Room",
    "Date": DateTime.now(),
    "Time": TimeOfDay.fromDateTime(DateTime.now())
  },
  {
    "Amenity": "Pods",
    "Date": DateTime.now(),
    "Time": TimeOfDay.fromDateTime(DateTime.now())
  },
  {
    "Amenity": "Meeting Room",
    "Date": DateTime.now(),
    "Time": TimeOfDay.fromDateTime(DateTime.now())
  },
];
List upcomingBookings = [
  {
    "Amenity": "Buggy",
    "Date": DateTime.now(),
    "Time": TimeOfDay.fromDateTime(DateTime.now())
  },
  {
    "Amenity": "Family Room",
    "Date": DateTime.now(),
    "Time": TimeOfDay.fromDateTime(DateTime.now())
  }
];

class _BookingsPageState extends State<BookingsPage> {
  String title = 'Upcoming';
  String buttonText ='View Past Bookings >';



  List bookings = upcomingBookings;

  @override
  Widget build(BuildContext context) {




    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("My Bookings"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
                FlatButton(child: Text(
                  buttonText,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: (){
                  setState(() {
                    if(title=="Upcoming"){
                      title = "History";
                      buttonText = "View Upcoming Bookings >";
                      bookings = pastBookings;
                    } else if(title=="History"){
                      title = "Upcoming";
                      buttonText = "View Past Bookings >";
                      bookings = upcomingBookings;
                    }
                  });
                },)
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: bookings.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                color: Theme.of(context).primaryColor))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          bookings[index]['Amenity'],
                          style: TextStyle(
                              fontSize: 24,
                              color: Theme.of(context).primaryColor),
                        ),
                        Column(
                          children: [
                            Text(
                              DateFormat.yMMMd()
                                  .format(bookings[index]['Date']),
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Theme.of(context).primaryColor),
                            ),
                            Text(
                              bookings[index]['Time'].format(context),
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Theme.of(context).primaryColor),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
