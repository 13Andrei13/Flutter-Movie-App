import 'package:flutter_redux/flutter_redux.dart';
import 'package:tema5/models/index.dart';
import 'package:redux/redux.dart';
import 'package:flutter/material.dart';

class IsLoadingContainer extends StatelessWidget {
  const IsLoadingContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<bool> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, bool>(
      converter: (Store<AppState> store) {
        print('container_isLoading');
        return store.state.isLoading;
      },
      builder: builder,
    );
  }
}
