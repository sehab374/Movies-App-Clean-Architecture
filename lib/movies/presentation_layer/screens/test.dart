import 'package:clean_arch_movies_app/movies/presentation_layer/screens/movie_screen.dart';
import 'package:flutter/material.dart';

class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MovieScreen(),
                  ));
            },
            child: Text("test")),
      ),
    );
  }
}
