import 'package:redux/redux.dart';
import 'package:yy_demo/api/api.dart';
import 'package:yy_demo/models/lib_resource.dart';
import 'package:yy_demo/redux/states/main.dart';
import 'package:yy_demo/redux/view_models/main.dart';

class SearchViewModel extends ViewModel {
  SearchViewModel(Store<ReduxState> store) : super(store);

  List<String> get keywords =>
      this.store.state.search.keywords.map((v) => v.keyword).toList();

  List<LibResource> get results => this.store.state.search.results;

  searchResrouces({String keyword}) {
    Networking.searchResrouces(keyword: keyword);
  }
}
