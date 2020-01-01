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
      home: PageButton(),
    );
  }
}

class PageButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // main axis vertical
        crossAxisAlignment: CrossAxisAlignment.center, // cross axix horizontal
        children: <Widget>[
          new RaisedButton(
            child: new Text("Raised Button"),
            onPressed: () {},
          ),
          Container(height: 0.0), // Tambahkan container agar cross axis bekerja
          new MaterialButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: new Text("Material Button"),
            onPressed: () {},
          ),
          new FlatButton(onPressed: () {}, child: Text("Flat Button"))
        ],
      ),
    );
  }
}
