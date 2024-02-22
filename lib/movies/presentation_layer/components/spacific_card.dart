import 'package:cached_network_image/cached_network_image.dart';
import 'package:clean_arch_movies_app/core/Movie_network/api_constants.dart';
import 'package:clean_arch_movies_app/movies/domain_layer/entities/movie.dart';
import 'package:flutter/material.dart';

class SpacificCard extends StatelessWidget {
  final Movie movie;

  const SpacificCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: CachedNetworkImage(
                  height: 150,
                  imageUrl: ApiConstants.imageUrl(movie.backdropPath),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(movie.title,
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Text(movie.releaseDate.split('-')[0],
                              style: TextStyle(color: Colors.white)),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          padding: EdgeInsetsDirectional.all(5),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(movie.voteAvarage.toString(),
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    //////to fit the size
                    Flexible(
                      child: Text(
                        movie.overview,
                        style: const TextStyle(color: Colors.white),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
