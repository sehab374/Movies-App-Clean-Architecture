class ApiConstants {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String apiKey = "816bf857af79b5eb00d7b0806d7e98a6";

  static const String nowPlayingMoviesPath =
      "$baseUrl/movie/now_playing?api_key=$apiKey";

  static const String popularMoviesPath =
      "$baseUrl/movie/popular?api_key=$apiKey";
  static const String TopRatedMoviesPath =
      "$baseUrl/movie/top_rated?api_key=$apiKey";

  static String movieDetailsPath(int movieId) =>
      "$baseUrl/movie/$movieId?api_key=$apiKey";

  static String recommendationPath(int movieId) =>
      "$baseUrl/movie/$movieId/recommendations?api_key=$apiKey";

  static const String popularTvPath = "$baseUrl/tv/popular?api_key=$apiKey";
  static const String topRatedTvPath = "$baseUrl/tv/top_rated?api_key=$apiKey";
  static const String onAirTvPath = "$baseUrl/tv/on_the_air?api_key=$apiKey";

  static String tvDetailsPath(int tvId) => "$baseUrl/tv/$tvId?api_key=$apiKey";

  static String tvRecommendationPath(int tvId) =>
      "$baseUrl/tv/$tvId/recommendations?api_key=$apiKey";

  static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500';

  static String imageUrl(String path) => '$baseImageUrl$path';
}
