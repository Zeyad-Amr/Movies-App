class AppConstants {
  static const baseUrl = "https://api.themoviedb.org/3";
  static const apiKey = "0d69d532a3a91cd2dfd151f0b4ab748a";
  static const nowPlayingMoviesPath =
      "$baseUrl/movie/now_playing?api_key=$apiKey";
  static const popularMoviesPath = "$baseUrl/movie/popular?api_key=$apiKey";
  static const topRatedMoviesPath = "$baseUrl/movie/top_rated?api_key=$apiKey";
}
