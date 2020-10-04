import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Movie extends Equatable {

  final String id;
  final String title;

  Movie({
    @required this.id,
    @required this.title
  });

  @override
  List<Object> get props => [id, title];

}