import 'package:flutter/foundation.dart';
import 'package:yy_demo/redux/states/dynamic.dart';
import 'package:yy_demo/redux/states/home.dart';
import 'package:yy_demo/redux/states/lib.dart';
import 'package:yy_demo/redux/states/profile.dart';
import 'package:yy_demo/redux/states/rank.dart';
import 'package:yy_demo/redux/states/search.dart';

@immutable
class ReduxState {
  final HomeState home;
  final RankState rank;
  final LibState lib;
  final SearchState search;
  final DynamicState dynamics;
  final ProfileState profile;

  const ReduxState(
      {this.home,
      this.rank,
      this.lib,
      this.search,
      this.dynamics,
      this.profile});
}
