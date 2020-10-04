import 'dart:convert';
import 'package:meta/meta.dart';
import 'package:moviebadgers/modules/movie_list/domain/entities/entities.dart';

class MovieModel extends Movie {

  MovieModel({
    @required int id,
    @required String title
  }) : super(id: id, title: title);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title
    };
  }

  static MovieModel fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return MovieModel(
      id: map['id'],
      title: map['title']
    );
  }

  String toJson() => json.encode(toMap());

  static MovieModel fromJson(String source) => fromMap(json.decode(source));

}