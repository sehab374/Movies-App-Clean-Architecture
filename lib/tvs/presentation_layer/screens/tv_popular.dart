import 'package:clean_arch_movies_app/core/utills/enums.dart';
import 'package:clean_arch_movies_app/tvs/presentation_layer/components/tv_spacific_card.dart';
import 'package:clean_arch_movies_app/tvs/presentation_layer/controller/tv_series_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/sevices/services_locator.dart';

class TvPopular extends StatelessWidget {
  const TvPopular({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<TvSeriesBloc>()..add(GetPopularTvEvent()),
      child: BlocBuilder<TvSeriesBloc, TvSeriesState>(
        builder: (context, state) {
          switch (state.popularTvState) {
            case RequestState.loading:
              return Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              );
            case RequestState.error:
              return SizedBox(
                height: 400,
                child: Center(child: Text(state.popularTvMessage)),
              );
            case RequestState.loaded:
              return Scaffold(
                appBar:
                AppBar(title: Text("Popular Tvs"), centerTitle: true),
                body: ListView.separated(
                  itemBuilder: (context, index) =>
                      TvSpacificCard(series: state.popularTvSeries[index]),
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemCount: state.popularTvSeries.length,
                ),
              );
          }
        },
      ),
    );
  }
}
