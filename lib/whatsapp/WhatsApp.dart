import 'package:flutter/material.dart';
import 'package:flutter_training/whatsapp/screen/CallScreen.dart';
import 'package:flutter_training/whatsapp/screen/CameraScreen.dart';
import 'package:flutter_training/whatsapp/screen/ChatScreen.dart';
import 'package:flutter_training/whatsapp/screen/StatusScreen.dart';

class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My WhatsApp",
      theme: new ThemeData(primaryColor: new Color(0xff075354), accentColor: new Color(0xff25d366)),
      home: new WhatsAppHome(),
    );
  }
}

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("WhatApp"),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(padding: EdgeInsets.only(right: 16.0)),
          new Icon(Icons.more_vert)
        ],
        bottom: new TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(
              icon: Icon(Icons.camera_alt),
            ),
            new Tab(
              text: "CHATS",
            ),
            new Tab(
              text: "STATUS",
            ),
            new Tab(
              text: "CALLS",
            )
          ],
        ),
      ),
      body: new TabBarView(
        controller: tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
          new CallScreen(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(Icons.message),
      ),
    );
  }
}
