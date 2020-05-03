import 'package:yy_demo/models/ad.dart';
import 'package:yy_demo/models/article.dart';
import 'package:yy_demo/models/tv_schedule.dart';
import 'package:yy_demo/redux/actions/main.dart';

class UpdateTVSchedule extends ActionType {
  final List<TVSchedule> payload;
  UpdateTVSchedule({this.payload}) : super(payload: payload);
}

class UpdateArticles extends ActionType {
  final List<Article> payload;
  UpdateArticles({this.payload}) : super(payload: payload);
}

class UpdateAds extends ActionType {
  final List<Ad> payload;
  UpdateAds({this.payload}) : super(payload: payload);
}
