library actions;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tema5/models/index.dart';

part 'get_movies.dart';
part 'index.freezed.dart';
part 'set.dart';

abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;

  StackTrace get stackTrace;
}
