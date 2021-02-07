
import 'package:flutter/material.dart';
import 'package:mywhatsapp/screens/ChatDetails.dart';

import '../model/chat.dart';

class chat extends StatefulWidget {
  @override
  _chatState createState() => _chatState();
}

class _chatState extends State<chat> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messageData.length,
      itemBuilder: (context,i) => 
      Column(
        children: [
          Divider(height: 18.0,),
          ListTile(
            leading: CircleAvatar(
              maxRadius: 25,
              foregroundColor: Colors.green,
              backgroundImage: NetworkImage(messageData[i].imageUrl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(messageData[i].name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                ),
                Text(messageData[i].time,
                style: TextStyle(color: Colors.grey,fontSize: 16.0),
                ),
                
              ],
            
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(messageData[i].message,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
              ),
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ChatDetail(name: messageData[i].name,)));
            },
          ),
        ],
      ),
      
    );
  }
}