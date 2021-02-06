import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }

}

class _State extends State<MyApp> {

  String value = '';
  String display = '';

  void onChanged(String val)
  {
    setState(() {
      value=val;
    });
  }

  void onClicked()
  {
    setState(() {
      display = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("hello"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: [
              new Text(display),
              new TextField(onChanged: onChanged,),
              new RaisedButton(onPressed: onClicked,child: new Text('click'),)
            ],
          ),
        ),
      ),
    );
  }

}