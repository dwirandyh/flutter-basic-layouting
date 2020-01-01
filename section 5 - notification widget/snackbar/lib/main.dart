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
      home: SnackbarDialog(),
    );
  }
}

class SnackbarDialog extends StatefulWidget {
  @override
  _SnackbarDialogState createState() => _SnackbarDialogState();
}

class _SnackbarDialogState extends State<SnackbarDialog> {
  final GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();

  void showSnackbar() {
    _key.currentState
        .showSnackBar(new SnackBar(content: new Text("This is snackbar")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar Example"),
        backgroundColor: Colors.black,
      ),
      key: _key,
      body: Center(
        child: new MaterialButton(
          textColor: Colors.white,
          color: Colors.black,
          child: Text("Show Snackbar"),
          onPressed: () {
            showSnackbar();
          },
        ),
      ),
    );
  }
}
