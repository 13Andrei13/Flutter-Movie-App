import 'package:flutter/material.dart';
import 'package:tema5/container/selected_movie_container.dart';
import 'package:tema5/models/index.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectedMovieContainer(
      builder: (BuildContext context, Movie movie) {
        return Scaffold(
          appBar: AppBar(
            title: Text(movie.title),
          ),
          body: FittedBox(
            child: Image.network(movie.image),
          ),
        );
      },
    );
  }
}
