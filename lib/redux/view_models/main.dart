import 'package:redux/redux.dart';
import 'package:yy_demo/redux/states/dynamic.dart';
import 'package:yy_demo/redux/states/home.dart';
import 'package:yy_demo/redux/states/lib.dart';
import 'package:yy_demo/redux/states/main.dart';
import 'package:yy_demo/redux/reducers/main.dart';
import 'package:yy_demo/redux/states/profile.dart';
import 'package:yy_demo/redux/states/rank.dart';
import 'package:yy_demo/redux/states/search.dart';

abstract class ViewModel {
  final Store<ReduxState> store;
  ViewModel(this.store);
}

class StoreContainer {
  static final Store<ReduxState> global = reduxStore();
}

Store reduxStore() => Store<ReduxState>(reduxReducer,
    initialState: ReduxState(
        home: HomeState.initialState(),
        rank: RankState.initialState(),
        lib: LibState.initialState(),
        search: SearchState.initialState(),
        dynamics: DynamicState.initialState(),
        profile: ProfileState.initialState()));
