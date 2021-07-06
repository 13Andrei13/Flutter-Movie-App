import 'package:flutter_redux/flutter_redux.dart';
import 'package:tema5/models/app_state.dart';
import 'package:tema5/models/movie.dart';
import 'package:redux/redux.dart';
import 'package:flutter/material.dart';

class MovieContainer extends StatelessWidget {
  const MovieContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Movie>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Movie>>(
      converter: (Store<AppState> store) {
        print('container_movie');
        return store.state.movies.asList();
      },
      builder: builder,
    );
  }
}
