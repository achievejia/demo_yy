import 'package:redux/redux.dart';
import 'package:yy_demo/models/comment.dart';
import 'package:yy_demo/models/help.dart';
import 'package:yy_demo/redux/states/main.dart';
import 'package:yy_demo/redux/view_models/main.dart';

class DynamicViewModel extends ViewModel {
  DynamicViewModel(Store<ReduxState> store) : super(store);

  List<Comment> get comments => this
      .store
      .state
      .dynamics
      .comments
      .where((v) => v.resourceInfo != null)
      .toList();

  List<Help> get helps => this.store.state.dynamics.helps;
  bool get isLoading => this.store.state.dynamics.isLoading;
}
