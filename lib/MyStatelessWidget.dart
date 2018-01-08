import 'package:flutter/material.dart';
import 'package:flutter_training/MyCard.dart';

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Stateless Class")),
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new MyCard(
              title: new Text("Call"),
              icon: new Icon(Icons.call),
            ),
            new MyCard(
              title: new Text("Message"),
              icon: new Icon(Icons.message),
            ),
            new MyCard(
              title: new Text("Email"),
              icon: new Icon(Icons.email),
            ),
          ],
        ),
      ),
    );
  }
}