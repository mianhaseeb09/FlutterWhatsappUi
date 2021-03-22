import 'package:flutter/material.dart';
import 'package:whatsapp/Pages/camera.dart';

import 'Pages/call.dart';
import 'Pages/chat.dart';
import 'Pages/status.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin {

  TabController _tabController;
  @override
  void initState(){
    super.initState();
    _tabController =new TabController(vsync: this,initialIndex: 1,length: 4);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("WhatsApp"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt),),
            new Tab(text: "Chats",),
            new Tab(text: "Status",),
            new Tab(text: "Calls",),


          ],
        ),
        actions: <Widget>[new Icon(Icons.search),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),

          new Icon(Icons.more_vert),

        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new camera(),
          new Chat(),
          new status(),

          new call(),

        ],
      ),
      floatingActionButton: new FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: new Icon(
              Icons.message,
          color: Colors.white,
      ),
          onPressed: () => print("open chats"),
      ),
    );
  }
}
