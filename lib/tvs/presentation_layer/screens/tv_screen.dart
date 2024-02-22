import 'package:clean_arch_movies_app/core/sevices/services_locator.dart';
import 'package:clean_arch_movies_app/tvs/presentation_layer/components/on_air_component.dart';
import 'package:clean_arch_movies_app/tvs/presentation_layer/components/tv_popular_component.dart';
import 'package:clean_arch_movies_app/tvs/presentation_layer/components/tv_top_rated_component.dart';
import 'package:clean_arch_movies_app/tvs/presentation_layer/controller/tv_series_bloc.dart';
import 'package:clean_arch_movies_app/tvs/presentation_layer/screens/tv_popular.dart';
import 'package:clean_arch_movies_app/tvs/presentation_layer/screens/tv_top_rated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class TvScreen extends StatelessWidget {
  const TvScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<TvSeriesBloc>()
        ..add(GetOnAirTvEvent())
        ..add(GetTopRatedTvEvent())
        ..add(GetPopularTvEvent()),
      child: Scaffold(
        body: SingleChildScrollView(
            key: Key("tvScrollView"),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              OnAirComponent(),
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
                              builder: (context) => TvPopular(),
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
              TvPopularComponent(),
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
                              builder: (context) => TvTopRated(),
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
              TvTopRatedComponent(),
              SizedBox(
                height: 50,
              )
            ])),
      ),
    );
  }
}
