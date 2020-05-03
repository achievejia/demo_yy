import 'package:yy_demo/redux/actions/main.dart';
import 'package:yy_demo/redux/actions/profile.dart';
import 'package:yy_demo/redux/states/profile.dart';

ProfileState reducer(ProfileState state, ActionType action) {
  if (action is UpdateUserProfile) {
    return state.copyWith(profile: action.payload);
  }
  return state;
}
