library app_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tema5/models/movie.dart';
import 'package:tema5/models/serializers.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState() {
    return _$AppState((AppStateBuilder b) {
      b.isLoading = false;
      b.page = 1;
    });
  }
  factory AppState.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json) as AppState;

  AppState._();

  BuiltList<Movie> get movies;

  bool get isLoading;

  String? get error;

  int get page;

  int? get selectedMovie;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
