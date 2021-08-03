/*import 'package:redux/redux.dart';
import 'package:tema5/actions/get_movies.dart';
import 'package:tema5/models/index.dart';

import '../data/movies_api.dart';

class AppMiddleware {
  const AppMiddleware({required MoviesApi moviesApi}) : _moviesApi = moviesApi;

  final MoviesApi _moviesApi;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      TypedMiddleware<AppState, GetMovies>(_getMovies), // AppState -> de unde raspunde si  GetMovies -> unde merge
    ];
  }

  Future<void> _getMovies(Store<AppState> store, GetMovies action, NextDispatcher next) async {
    next(action);
    try {
      print('mid_getMovie_ok');
      final List<Movie> movies = await _moviesApi.getMovies(store.state.page);
      store.dispatch(GetMovies.successful(movies));
    } catch (error) {
      print('mid_getMovie_error');

      store.dispatch(GetMovies.error(error, stackTrace));
    }
  }
}
*/
