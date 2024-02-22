import 'package:clean_arch_movies_app/core/sevices/services_locator.dart';
import 'package:clean_arch_movies_app/core/utills/enums.dart';
import 'package:clean_arch_movies_app/movies/presentation_layer/components/spacific_card.dart';
import 'package:clean_arch_movies_app/movies/presentation_layer/controller/movies_bloc.dart';
import 'package:clean_arch_movies_app/movies/presentation_layer/controller/movies_event.dart';
import 'package:clean_arch_movies_app/movies/presentation_layer/controller/movies_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopRatedMovie extends StatelessWidget {
  const TopRatedMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MoviesBloc>()..add(GetTopRatedMoviesEvent()),
      child: BlocBuilder<MoviesBloc, MoviesState>(
        builder: (context, state) {
          switch (state.topRatedState) {
            case RequestState.loading:
              return Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              );
            case RequestState.error:
              return SizedBox(
                height: 400,
                child: Center(child: Text(state.topRatedMessage)),
              );
            case RequestState.loaded:
              return Scaffold(
                appBar:
                    AppBar(title: Text("Top Rated Movies"), centerTitle: true),
                body: ListView.separated(
                  itemBuilder: (context, index) =>
                      SpacificCard(movie: state.topRatedMovie[index]),
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemCount: state.topRatedMovie.length,
                ),
              );
          }
        },
      ),
    );
  }
}
