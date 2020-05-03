import 'package:yy_demo/models/comment.dart';
import 'package:yy_demo/models/help.dart';
import 'package:yy_demo/models/video_comment.dart';
import 'package:yy_demo/models/video_info.dart';
import 'package:yy_demo/redux/actions/main.dart';

class UpdateComments extends ActionType {
  final List<Comment> payload;
  UpdateComments({this.payload}) : super(payload: payload);
}

class UpdateHelps extends ActionType {
  final List<Help> payload;
  UpdateHelps({this.payload}) : super(payload: payload);
}

class UpdateVideoInfo extends ActionType {
  final VideoInfo payload;
  UpdateVideoInfo({this.payload}) : super(payload: payload);
}

class UpdateVideoComments extends ActionType {
  final List<VideoComment> payload;
  UpdateVideoComments({this.payload}) : super(payload: payload);
}
