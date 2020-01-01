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
      home: PageStateFull(),
    );
  }
}

class PageStateless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        color: Colors.blue,
        child: new Container(
          color: Colors.lightGreen,
          margin: const EdgeInsets.all(50.0),
        ),
      ),
    );
  }
}

class PageStateFull extends StatefulWidget {
  @override
  _PageStateFullState createState() => _PageStateFullState();
}

class _PageStateFullState extends State<PageStateFull> {
  String message = '';

  @override
  void initState() {
    super.initState();
    message = "Klik tombol ini";
  }

  void methodChange() {
    setState(() {
      message = "Text telah berubah";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: new MaterialButton(
          color: Colors.green,
          textColor: Colors.white,
          onPressed: () {
            methodChange();
          },
          child: Text(message),
        ),
      ),
    );
  }
}
