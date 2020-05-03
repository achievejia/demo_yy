import 'package:redux/redux.dart';
import 'package:yy_demo/models/profile.dart';
import 'package:yy_demo/redux/states/main.dart';
import 'package:yy_demo/redux/view_models/main.dart';

class ProfileViewModel extends ViewModel {
  ProfileViewModel(Store<ReduxState> store) : super(store);

  Profile get profile => this.store.state.profile.profile;
}
