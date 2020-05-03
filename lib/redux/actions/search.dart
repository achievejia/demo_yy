import 'package:yy_demo/models/keyword.dart';
import 'package:yy_demo/models/lib_resource.dart';
import 'package:yy_demo/redux/actions/main.dart';

class UpdateHotKeywords extends ActionType {
  final List<Keyword> payload;
  UpdateHotKeywords({this.payload}) : super(payload: payload);
}

class UpdateSearchResults extends ActionType {
  final List<LibResource> payload;
  UpdateSearchResults({this.payload}) : super(payload: payload);
}
