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
      home: PageGridView(),
    );
  }
}

class PageGridView extends StatefulWidget {
  @override
  _PageGridView createState() => _PageGridView();
}

class _PageGridView extends State<PageGridView> {
  List<int> itemGrid = new List();

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < 30; i++) {
      itemGrid.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: new GridView.builder(
            itemCount: itemGrid.length,
            // maximum column
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
            itemBuilder: (BuildContext context, int index) {
              // column item
              return new Card(
                  color: Colors.green,
                  child: new Padding(padding: const EdgeInsets.all(25)));
            }));
  }
}
