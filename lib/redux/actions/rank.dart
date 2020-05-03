import 'package:yy_demo/models/resource.dart';
import 'package:yy_demo/redux/actions/main.dart';

class UpdateTopRanks extends ActionType {
  final Ranks payload;
  UpdateTopRanks({this.payload}) : super(payload: payload);
}
