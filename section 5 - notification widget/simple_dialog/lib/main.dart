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
      home: PageAlertDialog(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageAlertDialog extends StatefulWidget {
  @override
  _PageAlertDialogState createState() => _PageAlertDialogState();
}

class _PageAlertDialogState extends State<PageAlertDialog> {
  SimpleDialog simpleDialog;

  void showSimpleDialog() {
    simpleDialog = new SimpleDialog(
      title: new Text("Warning"),
      children: <Widget>[
        new SimpleDialogOption(
          child: Text("Jakarta"),
          onPressed: () {
            print("Jakarta");
          },
        ),
        new SimpleDialogOption(
          child: Text("Padang"),
          onPressed: () {
            print("Padang");
          },
        ),
        new SimpleDialogOption(
          child: Text("Lampung"),
          onPressed: () {
            print("Lampung");
          },
        ),
        new SimpleDialogOption(
          child: Text("Close"),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    );

    showDialog(context: context, child: simpleDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Notification Widget"),
        backgroundColor: Colors.green,
      ),
      body: new Center(
        child: RaisedButton(
          onPressed: () {
            showSimpleDialog();
          },
          child: new Text("Show Alert Dialog"),
        ),
      ),
    );
  }
}
