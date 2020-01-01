import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: PageInputWidget(),
    );
  }
}

class PageInputWidget extends StatefulWidget {
  @override
  _PageInputWidgetState createState() => _PageInputWidgetState();
}

class _PageInputWidgetState extends State<PageInputWidget> {
  String message = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text("Page Input Widget"),
      ),
      body: new Column(
        children: <Widget>[
          new TextField(
            onChanged: (String txt) {
              setState(() {
                message = txt;
              });
            },
            decoration: new InputDecoration(
                hintText: "Input Your Name", labelText: "Your Name"),
          ),
          new Text(message)
        ],
      ),
    );
  }
}
