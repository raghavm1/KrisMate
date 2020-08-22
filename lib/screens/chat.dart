import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sia_app/components/chatData.dart';

import '../components/chatBubble.dart';
import '../components/chatData.dart';

class ChatPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ChatPageState();
  }
}

class _ChatPageState extends State<ChatPage> {
  List<String> chat = [];
  List<String> chatOption = [];

  void initChatOption() {
    chatOption = initialQuestions;
  }

  void _handleClick(input) {
    chat.add(input);
    chat.add(chatData[input]["Answer"]);
    print(chatData[input]['Next Questions']);
    chatOption = chatData[input]['Next Questions'];
  }

  @override
  Widget build(BuildContext context) {
    if (chatOption.length == 0) {
      initChatOption();
    }
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Help'),),
        body: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(height: 40,),
        Container(
          child: Expanded(
            child: ListView.builder(

              itemBuilder: (context, index) {
                if (index % 2 == 0) {
                  return UserChatBubble(text: chat[index]);
                }
                return ResponseChatBubble(text: chat[index]);
              },
              itemCount: chat.length,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height*0.3,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                child: OutlineButton(
                  borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 2) ,
                  child: Text(chatOption[index], style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18, fontWeight: FontWeight.bold),),
                  onPressed: () {
                    setState(() {
                      _handleClick(chatOption[index]);
                    });
                  },
                  padding: EdgeInsets.all(8),
                ),
              );
            },
            itemCount: chatOption.length,
          ),
        ),
      ],
    ));
  }
}
