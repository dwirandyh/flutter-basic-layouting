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
      home: PageImageAsset(),
    );
  }
}

class PageImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Load Image"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: <Widget>[
            Image.asset(
              'images/movie.jpg',
              height: 200,
              width: 120,
            ),
            Text("Movie Poster"),
            // untuk jarak antara atas dan bawah
            SizedBox(
              height: 25.0,
            ),
            Text(
              "Image from URL",
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.network(
                  "https://d13ezvd6yrslxm.cloudfront.net/wp/wp-content/images/EJWDEpFXsAMm9gJ.jpg",
                  height: 200,
                  width: 130,
                ),
                Image.network(
                    "https://www.mauvais-genres.com/26247/avengers-endgame-original-movie-poster-15x21-in-2019-anthony-russo-robert-downey-jr.jpg",
                    height: 200,
                    width: 130)
              ],
            )
          ],
        ));
  }
}
