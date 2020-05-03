import 'package:yy_demo/redux/states/main.dart';
import 'package:yy_demo/redux/reducers/home.dart' as home;
import 'package:yy_demo/redux/reducers/rank.dart' as rank;
import 'package:yy_demo/redux/reducers/lib.dart' as lib;
import 'package:yy_demo/redux/reducers/search.dart' as search;
import 'package:yy_demo/redux/reducers/dynamic.dart' as dynamics;
import 'package:yy_demo/redux/reducers/profile.dart' as profile;

ReduxState reduxReducer(ReduxState state, action) => ReduxState(
    home: home.reducer(state.home, action),
    rank: rank.reducer(state.rank, action),
    lib: lib.reducer(state.lib, action),
    search: search.reducer(state.search, action),
    dynamics: dynamics.reducer(state.dynamics, action),
    profile: profile.reducer(state.profile, action));
