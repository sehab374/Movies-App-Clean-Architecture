class ApiConstants {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String apiKey = "816bf857af79b5eb00d7b0806d7e98a6";

  static const String nowPlayingMoviesPath =
      "$baseUrl/movie/now_playing?api_key=$apiKey";

  static const String popularMoviesPath =
      "$baseUrl/movie/popular?api_key=$apiKey";
  static const String TopRatedMoviesPath =
      "$baseUrl/movie/top_rated?api_key=$apiKey";
}