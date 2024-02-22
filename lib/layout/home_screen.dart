import 'package:clean_arch_movies_app/layout/home_bloc.dart';
import 'package:clean_arch_movies_app/movies/presentation_layer/screens/movie_screen.dart';
import 'package:clean_arch_movies_app/tvs/presentation_layer/screens/tv_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  int currentIndex = 0;
  List<Widget> screens = [MovieScreen(), TvScreen()];

  // HomeBloc get bloc=>BlocProvider.of<HomeBloc>(context);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(),
      child: BlocConsumer<HomeBloc, HomeState>(
        //listener: listen to any state then call builder(which rebuild screen)
        listener: (context, state) {
          //if state return with data (store this data in local obj)
          if (state is HomeChangeNavBar) {
            currentIndex = state.index;
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: screens[currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentIndex,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.movie, color: Colors.white),
                  label: "",
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.tv, color: Colors.white), label: ""),
              ],
              onTap: (value) {
                ///////////////////////////////////////////..add
                BlocProvider.of<HomeBloc>(context)
                    .add(HomeChangeNavBarEvent(currentIndex: value));

                // index = value;
              },
            ),
          );
        },
      ),
    );
  }
}
