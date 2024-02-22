import 'package:clean_arch_movies_app/core/sevices/services_locator.dart';
import 'package:clean_arch_movies_app/core/utills/enums.dart';
import 'package:clean_arch_movies_app/tvs/presentation_layer/components/tv_spacific_card.dart';
import 'package:clean_arch_movies_app/tvs/presentation_layer/controller/tv_series_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TvTopRated extends StatelessWidget {
  const TvTopRated({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<TvSeriesBloc>()..add(GetTopRatedTvEvent()),
      child: BlocBuilder<TvSeriesBloc, TvSeriesState>(
        builder: (context, state) {
          switch (state.topRatedTvState) {
            case RequestState.loading:
              return Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              );
            case RequestState.error:
              return SizedBox(
                height: 400,
                child: Center(child: Text(state.topRatedTvMessage)),
              );
            case RequestState.loaded:
              return Scaffold(
                appBar: AppBar(
                    title: const Text("Top Rated Tvs"), centerTitle: true),
                body: ListView.separated(
                  itemBuilder: (context, index) =>
                      TvSpacificCard(series: state.topRatedTvSeries[index]),
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemCount: state.topRatedTvSeries.length,
                ),
              );
          }
        },
      ),
    );
  }
}
