import 'package:yy_demo/common/utils.dart';

/// 文章评论
class ArticleComment {
  String id;
  String author;
  String userpic;
  String source;
  String groupName;
  String good;
  String dateline;
  int goodStatus;
  List<ArticleReply> replys;
  String replyNum;
  String nickname;
  String content;

  ///
  /// 构造函数
  ArticleComment({this.id, this.author, this.userpic, this.source, this.groupName, this.good, this.dateline, this.goodStatus, this.replys, this.replyNum, this.nickname, this.content});

  /// JSON数据格式化成对象
  ArticleComment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    author = json['author'];
    userpic = json['userpic'];
    source = json['source'];
    groupName = json['group_name'];
    good = json['good'];
    dateline = json['dateline'];
    goodStatus = json['good_status'];
    if (!Utils.isEmpty(json['replys'])) {
      replys = new List<ArticleReply>();
      json['reply_list'].forEach((v) {
        replys.add(new ArticleReply.fromJson(v));
      });
    }
    replyNum = json['reply_num'];
    nickname = json['nickname'];
    content = json['content'];
  }
}


/// 文章回复
class ArticleReply {
  String author;
  String toUid;
  String toNickname;
  String id;
  String authorNickname;
  String content;
  String replyid;
  String dateline;
  String authorUserpic;
  String authorGroupName;

  /// 文章回复构造函数
  ArticleReply({this.author, this.toUid, this.toNickname, this.id, this.authorNickname, this.content, this.replyid, this.dateline, this.authorUserpic, this.authorGroupName});

  ArticleReply.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    toUid = json['to_uid'];
    toNickname = json['to_nickname'];
    id = json['id'];
    authorNickname = json['author_nickname'];
    content = json['content'];
    replyid = json['replyid'];
    dateline = json['dateline'];
    authorUserpic = json['author_userpic'];
    authorGroupName = json['author_group_name'];
  }
}