import 'package:yy_demo/redux/actions/main.dart';
import 'package:yy_demo/redux/actions/rank.dart';
import 'package:yy_demo/redux/states/rank.dart';

RankState reducer(RankState state, ActionType action) {
  if (action is UpdateTopRanks) {
    return state.copyWith(ranks: action.payload, isLoading: false);
  }
  return state;
}
