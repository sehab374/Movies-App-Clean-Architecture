import 'package:animate_do/animate_do.dart';
import 'package:clean_arch_movies_app/core/sevices/services_locator.dart';
import 'package:clean_arch_movies_app/movies/presentation_layer/components/now_playing_component.dart';
import 'package:clean_arch_movies_app/movies/presentation_layer/components/popular_component.dart';
import 'package:clean_arch_movies_app/movies/presentation_layer/components/top_rated_component.dart';
import 'package:clean_arch_movies_app/movies/presentation_layer/controller/movies_bloc.dart';
import 'package:clean_arch_movies_app/movies/presentation_layer/controller/movies_event.dart';
import 'package:clean_arch_movies_app/movies/presentation_layer/screens/popular_movie.dart';
import 'package:clean_arch_movies_app/movies/presentation_layer/screens/top_rated_movie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MoviesBloc>()
        ..add(GetNowPlayingMoviesEvent())
        ..add(GetPopularMoviesEvent())
        ..add(GetTopRatedMoviesEvent()),
      child: Scaffold(
        body: SingleChildScrollView(
            key: Key("movieScrollView"),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              NowPlayingComponent(),
              Container(
                margin: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.15,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        /// TODO : NAVIGATION TO POPULAR SCREEN
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PopularMovie(),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Text('See More',
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 16.0,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              PopularComponents(),
              Container(
                margin: const EdgeInsets.fromLTRB(
                  16.0,
                  24.0,
                  16.0,
                  8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Rated",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.15,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        /// TODO : NAVIGATION TO Top Rated Movies Screen
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TopRatedMovie(),
                            ));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('See More',
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 16.0,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TopRatedComponents(),
              SizedBox(
                height: 50,
              )
            ])),
      ),
    );
  }
}
