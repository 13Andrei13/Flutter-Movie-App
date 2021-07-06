//Action + State => State

import 'package:redux/redux.dart';
import 'package:tema5/actions/get_movies.dart';
import 'package:tema5/actions/set.dart';
import 'package:tema5/models/app_state.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  //test
  (AppState state, dynamic action) {
    print(action);
    return state;
  },
  //final test

  TypedReducer<AppState, GetMoviesSuccessful>(_getMoviesSuccessful),
  TypedReducer<AppState, GetMoviesError>(_getMoviesError),
  TypedReducer<AppState, GetMovies>(_getMovies),
  TypedReducer<AppState, SetSelectedMovie>(_setSelectedMovie),
]);

AppState _getMoviesSuccessful(AppState state, GetMoviesSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..movies.addAll(action.movies)
      ..isLoading = false
      ..page = state.page + 1;
    print('reducer_suc');
  });
}

AppState _getMoviesError(AppState state, GetMoviesError action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..isLoading = false
      ..error = action.error.toString();
    print('reducer_er');
  });
}

AppState _getMovies(AppState state, GetMovies action) {
  return state.rebuild((AppStateBuilder b) {
    b.isLoading = true;
    print('reducer_?');
  });
}

AppState _setSelectedMovie(AppState state, SetSelectedMovie action) {
  return state.rebuild((AppStateBuilder b) {
    b.selectedMovie = action.movieId;
  });
}
