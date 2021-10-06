import 'package:dio/dio.dart';
import 'package:nonton/models/movie_model.dart';

class MovieService {
  final baseUrl = 'https://api.themoviedb.org';
  final apiKey = 'bbecd840205c21ee21e643060d62e6a9';
  final dio = Dio();

  Future<List<MovieModel>> getPlayingNowMovies() async {
    try {
      final res = await dio.get('$baseUrl/3/movie/now_playing?api_key=$apiKey');
      final List data = res.data['results'] as List;
      print('data: $data');
      final movies = data.map((e) => MovieModel.fromJson(e)).toList();
      print(movies);
      return movies;
    } catch (e) {
      print(e);
      throw e;
    }
  }
}
