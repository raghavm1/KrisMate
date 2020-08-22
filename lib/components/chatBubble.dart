import 'package:flutter/material.dart';

class UserChatBubble extends StatelessWidget {
  final String text;
  UserChatBubble({this.text});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Card(
          color: Colors.white60,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(0.0),
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0))),
          child: Container(
            width: MediaQuery.of(context).size.width*0.75,
              padding: EdgeInsets.all(8),
              child: Text(
                text,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              )),
        ),
      ],
    );
  }
}

class ResponseChatBubble extends StatelessWidget {
  final String text;
  ResponseChatBubble({this.text});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Card(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          color: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0))),
          child: Container(
              width: MediaQuery.of(context).size.width*0.75,
              padding: EdgeInsets.all(8),
              child: Text(
                text,
                style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              )),
        ),
      ],
    );
  }
}
