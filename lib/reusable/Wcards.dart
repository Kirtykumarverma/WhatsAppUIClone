import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class Wcards extends StatelessWidget {
  final String name, imageurl, time;

  const Wcards(this.name,this.imageurl,this.time);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        maxRadius: 25,
        foregroundColor: Colors.green,
        backgroundImage: NetworkImage(imageurl),
      ),
      title: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(time),
    );
  }
}
