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
      home: PageListWidget(),
    );
  }
}

class PageListWidget extends StatefulWidget {
  @override
  _PageListWidgetState createState() => _PageListWidgetState();
}

class _PageListWidgetState extends State<PageListWidget> {
  List<int> item = new List();

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < 25; i++) {
      item.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView.builder(
          itemCount: item.length,
          itemBuilder: (BuildContext context, int index) {
            return new ListTile(
              title: Text("Item Number : $index"),
              trailing: Icon(Icons.print),
            );
          }),
    );
  }
}
