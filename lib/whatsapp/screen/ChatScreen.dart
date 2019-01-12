import 'package:flutter/material.dart';
import 'package:flutter_training/whatsapp/model/DataModel.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatStateState createState() => _ChatStateState();
}

class _ChatStateState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: details.length,
      itemBuilder: (context, i) {
        return new Column(
          children: <Widget>[
            new Divider(
              height: 8.0,
            ),
            new ListTile(
              leading: new CircleAvatar(
                child: new Text(details[i].name[0]),
              ),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(details[i].name, style: new TextStyle(fontWeight: FontWeight.bold)),
                  new Text(details[i].date, style: new TextStyle(color: Colors.grey))
                ],
              ),
              subtitle: new Container(
                child: new Text(details[i].message, style: new TextStyle(color: Colors.black)),
              ),
            )
          ],
        );
      },
    );
  }
}
