import 'package:clean_arch_movies_app/movies/presentation_layer/screens/movie_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Movies App",
      debugShowCheckedModeBanner: false,
      home: MovieScreen(),
    );
  }
}
