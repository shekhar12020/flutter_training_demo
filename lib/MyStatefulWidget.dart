import 'package:flutter/material.dart';


class MyStatefulWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new MyState();
  }
}

class MyState extends State<MyStatefulWidget> {

  int counter = 0;
  List<String> strings = ["I", "Love", "Flutter"];
  String currentString = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Stateful Widget"), backgroundColor: Colors.teal,),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(currentString,
                  style: new TextStyle(fontSize: 30.0)),
              new RaisedButton(
                  child: new Text("Press Me"),
                  color: Colors.blue,
                  onPressed: buttonClick
              )
            ],
          ),
        ),
      ),
    );
  }

  void buttonClick() {
    setState(() {
      currentString = strings[counter];
      counter = counter < 2 ? counter + 1 : 0;
    });
  }
}
