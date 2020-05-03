import 'package:flutter/foundation.dart';
import 'package:yy_demo/models/comment.dart';
import 'package:yy_demo/models/help.dart';
import 'package:yy_demo/models/video_comment.dart';
import 'package:yy_demo/models/video_info.dart';

@immutable
class DynamicState {
  final List<Comment> comments;
  final List<Help> helps;
  final bool isLoading;

  DynamicState({this.comments, this.helps, this.isLoading = true});

  DynamicState copyWith(
      {List<Comment> comments,
      List<Help> helps,
      VideoInfo videoInfo,
      List<VideoComment> videoComments,
      bool isLoading}) {
    return DynamicState(
        comments: comments ?? this.comments,
        helps: helps ?? this.helps,
        isLoading: isLoading ?? this.isLoading);
  }

  DynamicState.initialState()
      : comments = [],
        helps = [],
        isLoading = true;
}
