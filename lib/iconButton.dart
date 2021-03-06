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

  int count = 0;

  void add()
  {
    setState(() {
      count++;
    });
  }

  void sub()
  {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("add and substract"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: [
              new Text(count.toString()),
              new IconButton(icon: new Icon(Icons.add), onPressed: add),
              new IconButton(icon: new Icon(Icons.minimize_rounded), onPressed: sub)
            ],
          ),
        ),
      ),
    );
  }

}