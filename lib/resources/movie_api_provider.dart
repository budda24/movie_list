import 'dart:async';
import 'package:http/http.dart' show Client;
import 'dart:convert';
import 'package:online_tribes/models/item_model.dart';

class MovieApiProvider {
  Client client = Client();
  final String _apiKey = 'bc76685e949dedd67b7eecf050ba8aac';



  Future<ItemModel> fetchMovieList() async {
    Uri url = Uri.parse('https://api.themoviedb.org/3/movie/550?api_key=$_apiKey');
    print('this is the url $url');
    final response = await client
        .get(url);
    /*print(response.body.toString());*/
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      print(response.body.toString());

      return ItemModel.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
}