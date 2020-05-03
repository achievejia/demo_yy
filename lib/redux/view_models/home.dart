import 'package:redux/redux.dart';
import 'package:yy_demo/models/ad.dart';
import 'package:yy_demo/models/article.dart';
import 'package:yy_demo/models/tv_schedule.dart';
import 'package:yy_demo/redux/states/main.dart';
import 'package:yy_demo/redux/view_models/main.dart';

class HomeViewModel extends ViewModel {
  HomeViewModel(Store<ReduxState> store) : super(store);

  List<TVSchedule> get schedules => this.store.state.home.schedules;
  List<Article> get articles => this.store.state.home.articles;
  List<Ad> get ads =>
      this.store.state.home.ads.where((i) => i.adType == 6).toList();
  bool get isLoading => this.store.state.home.isLoading;
}
