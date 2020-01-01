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
      home: AlertDialogPage(),
    );
  }
}

class AlertDialogPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _AlertDialogPage();
  }
}

class _AlertDialogPage extends State<AlertDialogPage> {
  void showAlertDialog() {
    showDialog(
        context: context,
        child: new AlertDialog(
          title: Text("Warning"),
          content: Text("Anda yakin ingin keluar ?"),
          actions: <Widget>[
            new IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                }),
            new IconButton(
                icon: Icon(Icons.check),
                color: Colors.green,
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
        backgroundColor: Colors.black,
      ),
      body: new Center(
          child: new Column(
        children: <Widget>[
          new RaisedButton(
            onPressed: () {
              showAlertDialog();
            },
            child: Text("Show Alert Dialog"),
          ),
        ],
      )),
    );
  }
}
