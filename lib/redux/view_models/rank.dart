import 'package:redux/redux.dart';
import 'package:yy_demo/models/resource.dart';
import 'package:yy_demo/redux/states/main.dart';
import 'package:yy_demo/redux/view_models/main.dart';

class RankViewModel extends ViewModel {
  RankViewModel(Store<ReduxState> store) : super(store);

  Ranks get ranks => this.store.state.rank.ranks;
  bool get isLoading => this.store.state.rank.isLoading;
}
