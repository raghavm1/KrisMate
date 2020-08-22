import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';

class AmenityPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AmenityPageState();
  }
}

class _AmenityPageState extends State<AmenityPage> {
  String description =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales mi et risus tincidunt, eget consequat felis condimentum. Sed convallis vel orci eu pulvinar. ';

  DateTime _fromDate = DateTime.now();
  TimeOfDay _fromTime = TimeOfDay.fromDateTime(DateTime.now());

  Future<void> _showDatePicker() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _fromDate,
      firstDate: DateTime(2015, 1),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _fromDate) {
      setState(() {
        _fromDate = picked;
      });
    }
  }

  Future<void> _showTimePicker() async {
    final picked = await showTimePicker(
      context: context,
      initialTime: _fromTime,
    );
    if (picked != null && picked != _fromTime) {
      setState(() {
        _fromTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Amenity Name"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/logo.png'),
          Text(
            description,
            overflow: TextOverflow.ellipsis,
            maxLines: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).primaryColor)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        DateFormat.yMMMd().format(_fromDate),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                          color: Theme.of(context).primaryColor,
                        ),
                        onPressed: () => _showDatePicker(),
                      ),
                    ]),
              ),
              Container(
                width: 150,
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).primaryColor)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(_fromTime.format(context),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                          color: Theme.of(context).primaryColor,
                        ),
                        onPressed: () => _showTimePicker(),
                      ),
                    ]),
              ),
            ],
          ),
          RaisedButton(
            color: Theme.of(context).primaryColor,
            child: Text(
              'Book',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            onPressed: () =>Navigator.pop(context),
            padding: EdgeInsets.all(8.0),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          )
        ],
      ),
    );
  }
}
