import 'package:yy_demo/redux/actions/home.dart';
import 'package:yy_demo/redux/actions/main.dart';
import 'package:yy_demo/redux/states/home.dart';

HomeState reducer(HomeState state, ActionType action) {
  if (action is UpdateTVSchedule) {
    return state.copyWith(schedules: action.payload);
  }

  if (action is UpdateArticles) {
    return state.copyWith(articles: action.payload, isLoading: false);
  }

  if (action is UpdateAds) {
    return state.copyWith(ads: action.payload);
  }
  return state;
}
