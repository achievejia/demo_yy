/// 帮助类
class Help {
  String detail;
  String uid;
  String typeCn;
  String resourceCname;
  String userpic;
  String type;
  String title;
  String resourceid;
  String dateline;
  String lastOpenTime;
  String statusCn;
  String groupName;
  String hid;
  String nickname;
  String commentsCount;
  String status;
  String views;

  Help({this.detail, this.uid, this.typeCn, this.resourceCname, this.userpic, this.type, this.title, this.resourceid, this.dateline, this.lastOpenTime, this.statusCn, this.groupName, this.hid, this.nickname, this.commentsCount, this.status, this.views});

  Help.fromJson(Map<String, dynamic> json) {
    detail = json['detail'];
    uid = json['uid'];
    typeCn = json['type_cn'];
    resourceCname = json['resource_cname'];
    userpic = json['userpic'];
    type = json['type'];
    title = json['title'];
    resourceid = 
  }
}