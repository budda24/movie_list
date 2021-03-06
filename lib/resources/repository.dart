import 'dart:async';
import 'movie_api_provider.dart';
import 'package:online_tribes/models/item_model.dart';

class Repository {
  final moviesApiProvider = MovieApiProvider();

  Future<ItemModel> fetchAllMovies() => moviesApiProvider.fetchMovieList();
}