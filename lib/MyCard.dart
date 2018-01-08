import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  MyCard({this.title, this.icon});

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.only(bottom: 8.0),
      child: new Card(
        child: new Container(
          padding: new EdgeInsets.all(8.0),
          child: new Column(
            children: <Widget>[
              this.title, this.icon
            ],
          ),
        ),
      ),
    );
  }
}