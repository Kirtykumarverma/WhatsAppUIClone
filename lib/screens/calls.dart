import 'package:flutter/material.dart';
import '../model/calls.dart';


class calls extends StatefulWidget {
  @override
  _callsState createState() => _callsState();
}

class _callsState extends State<calls> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callData.length,
      itemBuilder: (Context,i) => Column(
        children: [
          Divider(height: 20.0,),
          ListTile(
            leading:CircleAvatar(
                 foregroundColor: Colors.green,
              maxRadius: 25,
              backgroundImage: NetworkImage(callData[i].imageUrl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(callData[i].name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                ),
                Icon(Icons.call,color: Colors.green,)
              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(callData[i].time,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16.0,
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}