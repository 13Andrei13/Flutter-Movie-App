import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tema5/actions/index.dart';
import 'package:tema5/models/index.dart';

import '../data/movies_api.dart';

class AppEpics {
  const AppEpics({required MoviesApi moviesApi}) : _moviesApi = moviesApi;

  final MoviesApi _moviesApi;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, GetMoviesStart>(_getMovies),
    ]);
  }

  Stream<AppAction> _getMovies(Stream<GetMoviesStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetMoviesStart action) => _moviesApi.getMovies(store.state.page))
        .map((List<Movie> movies) => GetMovies.successful(movies))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetMovies.error(error, stackTrace));
  }
}
