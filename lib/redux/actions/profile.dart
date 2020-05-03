import 'package:yy_demo/models/profile.dart';
import 'package:yy_demo/redux/actions/main.dart';

class UpdateUserProfile extends ActionType {
  final Profile payload;
  UpdateUserProfile({this.payload}) : super(payload: payload);
}
