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
      home: MovieApps(),
    );
  }
}

class MovieApps extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MovieAppsState();
  }
}

class _MovieAppsState extends State<MovieApps> {
  List<Container> listMovie = new List();

  var movieList = [
    {"name": "Movie 1", "images": "movie1.jpg"},
    {"name": "Movie 2", "images": "movie2.jpg"},
    {"name": "Movie 3", "images": "movie3.jpg"},
    {"name": "Movie 4", "images": "movie4.jpg"},
    {"name": "Movie 5", "images": "movie5.jpg"},
    {"name": "Movie 6", "images": "movie6.jpg"},
    {"name": "Movie 7", "images": "movie7.jpg"},
    {"name": "Movie 8", "images": "movie8.jpg"},
    {"name": "Movie 9", "images": "movie9.jpg"},
    {"name": "Movie 10", "images": "movie10.jpg"},
    {"name": "Movie 11", "images": "movie11.jpg"}
  ];

  _createMovieList() {
    for (var i = 0; i < movieList.length; i++) {
      final item = movieList[i];
      final String images = item['images'];

      listMovie.add(new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Card(
          child: new InkWell(
            // agar bisa di click
            onTap: () {},
            child: new Column(
              children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.all(10.0),
                ),
                new Hero(
                    tag: item["name"],
                    child: new Image.asset(
                      "gambar/$images",
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    )),
                new Padding(padding: new EdgeInsets.all(10)),
                new Text(
                  item["name"],
                  style:
                      new TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )
              ],
            ),
          ),
        ),
      ));
    }
  }

  @override
  void initState() {
    super.initState();
    _createMovieList();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    return Scaffold(
      appBar: AppBar(
        title: Text("Movie Apps"),
        backgroundColor: Colors.red,
      ),
      resizeToAvoidBottomPadding: false,
      body: new Container(
        child: GridView.count(
          childAspectRatio: (itemWidth / itemHeight),
          controller: new ScrollController(keepScrollOffset: false),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          crossAxisCount: 2,
          children: listMovie,
        ),
      ),
    );
  }
}
