import 'package:flutter_redux/flutter_redux.dart';
import 'package:tema5/models/index.dart';
import 'package:redux/redux.dart';
import 'package:flutter/material.dart';

class UserContainer extends StatelessWidget {
  const UserContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<AppUser?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppUser?>(
      converter: (Store<AppState> store) {
        print('user_container');
        return store.state.user;
      },
      builder: builder,
    );
  }
}
