import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
      home: ToastPage(),
    );
  }
}

class ToastPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _ToastPage();
  }
}

class _ToastPage extends State<ToastPage> {
  void showToastMessage() {
    Fluttertoast.showToast(
        msg: "This is toast message",
        toastLength: Toast.LENGTH_SHORT,
        backgroundColor: Colors.purple,
        textColor: Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Toast Message"),
        backgroundColor: Colors.purple,
      ),
      body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              new RaisedButton(
                  child: Text("Show Toast"),
                  onPressed: () {
                    showToastMessage();
                  })
            ],
          )),
    );
  }
}
