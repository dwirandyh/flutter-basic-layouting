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
      home: MovieListPage(),
    );
  }
}

class MovieListPage extends StatefulWidget {
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieListPage> {
  List<Container> movieContainerList = new List();

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
  ];

  _createMovieListContainer() {
    for (var i = 0; i < movieList.length; i++) {
      final item = movieList[i];
      final String movieImages = item["images"];

      movieContainerList.add(new Container(
        padding: new EdgeInsets.all(5.0),
        child: new Card(
          child: new InkWell(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => DetailMovieApp(
                        name: item["name"],
                        image: movieImages,
                      )));
            },
            child: new Column(
              children: <Widget>[
                new Padding(padding: new EdgeInsets.all(10)),
                new Hero(
                    tag: item["name"],
                    child: new Image.asset(
                      "images/$movieImages",
                      height: 180.0,
                      width: 100.0,
                      fit: BoxFit.cover,
                    )),
                new Padding(padding: new EdgeInsets.all(10.0)),
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
    _createMovieListContainer();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight) / 2;
    final double itemWidth = size.width / 2;

    return Scaffold(
      appBar: AppBar(
        title: Text('Movie App'),
        backgroundColor: Colors.red,
      ),
      resizeToAvoidBottomPadding: false,
      body: new Container(
        child: GridView.count(
          childAspectRatio: (itemWidth / itemHeight),
          controller: new ScrollController(keepScrollOffset: false),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          crossAxisCount: 2,
          children: movieContainerList,
        ),
      ),
    );
  }
}

class DetailMovieApp extends StatelessWidget {
  DetailMovieApp({this.name, this.image});

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          new Container(
            height: 300,
            child: new Hero(
                tag: name,
                child: new Material(
                  child: new InkWell(
                    child: Image.asset(
                      "images/$image",
                      fit: BoxFit.contain,
                    ),
                  ),
                )),
          ),
          new NameSection(
            name: name,
          ),
          new IconSection(),
          new DescriptionSection()
        ],
      ),
    );
  }
}

class NameSection extends StatelessWidget {
  // constructor
  NameSection({this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          new Expanded(
              child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                "name",
                style: new TextStyle(fontSize: 20.0, color: Colors.red),
              ),
              new Text("$name\@gmail.com",
                  style: TextStyle(fontSize: 17.0, color: Colors.grey))
            ],
          )),
          new Row(
            children: <Widget>[
              new Icon(Icons.star, size: 30.0, color: Colors.yellow),
              new Text(
                "12",
                style: new TextStyle(fontSize: 18.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class IconSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: new Row(
        children: <Widget>[
          IconWithText(iconData: Icons.call, text: "Call"),
          IconWithText(iconData: Icons.message, text: "Message"),
          IconWithText(iconData: Icons.photo, text: "Photo")
        ],
      ),
    );
  }
}

class IconWithText extends StatelessWidget {
  IconWithText({this.iconData, this.text});

  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: new Column(
        children: <Widget>[
          new Icon(
            iconData,
            size: 20.0,
            color: Colors.red,
          ),
          new Text(
            text,
            style: TextStyle(fontSize: 12.0, color: Colors.red),
          )
        ],
      ),
    );
  }
}

class DescriptionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(10.0),
      child: new Card(
        child: new Padding(
          padding: const EdgeInsets.all(10.0),
          child: new Text(
            "Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun. Ia mulai dipopulerkan pada tahun 1960 dengan diluncurkannya lembaran-lembaran Letraset yang menggunakan kalimat-kalimat dari Lorem Ipsum, dan seiring munculnya perangkat lunak Desktop Publishing seperti Aldus PageMaker juga memiliki versi Lorem Ipsum.",
            style: new TextStyle(fontSize: 14.0),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
