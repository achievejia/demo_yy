import 'package:yy_demo/models/article_comment.dart';
import 'package:yy_demo/redux/actions/main.dart';

class UpdateArticleComments extends ActionType {
  final List<ArticleComment> payload;
  UpdateArticleComments({this.payload}) : super(payload: payload);
}
