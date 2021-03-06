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

  String value ="";

  void setValue(String val){
    setState(() {
      value=val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("hello"),
      ),
      persistentFooterButtons: [
        new IconButton(icon: new Icon(Icons.person), onPressed: ()=>setValue("test1"),alignment: Alignment.bottomCenter,),
        new IconButton(icon: new Icon(Icons.print), onPressed: ()=>setValue("test2"),alignment: Alignment.bottomCenter,),
        new IconButton(icon: new Icon(Icons.add_call), onPressed: ()=>setValue("test3"),alignment: Alignment.bottomCenter,)
      ],
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: [
              new Text("test")
            ],
          ),
        ),
      ),
    );
  }

}