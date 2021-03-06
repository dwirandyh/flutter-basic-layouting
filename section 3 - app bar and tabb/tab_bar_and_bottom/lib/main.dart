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
      home: PageTabBarState(),
    );
  }
}

class PageTabBarState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _PageTabBarState();
  }
}

class _PageTabBarState extends State<PageTabBarState>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab Bar Apps"),
        backgroundColor: Colors.green,
        bottom: new TabBar(
          controller: tabController,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.home),
            ),
            new Tab(
              icon: new Icon(Icons.dashboard),
            ),
            new Tab(icon: new Icon(Icons.data_usage)),
            new Tab(icon: Icon(Icons.close))
          ],
        ),
      ),
      body: new TabBarView(
        controller: tabController,
        children: <Widget>[
          new Center(child: new Text("Welcome to Home")),
          new Center(child: new Text("Welcome to Dashboard")),
          new Center(child: new Text("Welcome to Data Usage")),
          new Center(child: new Text("Welcome to close"))
        ],
      ),
    );
  }
}
