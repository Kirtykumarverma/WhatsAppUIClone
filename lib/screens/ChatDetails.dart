import 'package:flutter/material.dart';

class ChatDetail extends StatefulWidget {
  final String name;

  const ChatDetail({Key key, this.name}) : super(key: key);
  @override
  _ChatDetailState createState() => _ChatDetailState();
}

class _ChatDetailState extends State<ChatDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      
    );
  }
}