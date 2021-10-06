class MovieModel {
  // final bool adult;
  // final String backdropPath;
  // final List genreIds;
  final int id;
  // final String originalLanguage;
  // final String originalTitle;
  final String overview;
  // final double popularity;
  final String posterPath;
  final DateTime releaseDate;
  final String title;
  // final bool video;
  final num voteAverage;
  final int voteCount;

  MovieModel({
    required this.id,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.voteAverage,
    required this.voteCount,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        id: json['id'],
        overview: json['overview'],
        posterPath: json['poster_path'],
        releaseDate: DateTime.parse(json['release_date']),
        title: json['title'],
        voteAverage: json['vote_average'],
        voteCount: json['vote_count'],
      );
}
