import 'package:flutter/material.dart';
import 'calls.dart';
import 'camera.dart';
import 'status.dart';
import 'chat.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(initialIndex: 1,length: 4,vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp',style: TextStyle(color:Colors.white),),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
           IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_vert),
            color: Colors.white,
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt,color: Colors.white,),),
            Tab(child: Text('Chats',style: Theme.of(context).textTheme.button,),),
            Tab(child: Text('Status',style: Theme.of(context).textTheme.button,),),
            Tab(child: Text('Calls',style: Theme.of(context).textTheme.button,),),            
                      
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          camera(),
          chat(),
          status(),
          calls(),
        ],
      ),
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.message,color: Colors.white,),
        onPressed: (){},
      ),
    );
  }
}