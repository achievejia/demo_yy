/// 广告推荐位模型
class Ad {
  int adId;
  int adType;
  String pic;
  String click;
  String wh;
  int status;

  /// 广告模型构造函数
  Ad({this.adId, this.adType, this.pic, this.click, this.wh, this.status});

  /// 广告模型数据从Json中取值
  Ad.fromJson(Map<String, dynamic> json) {
    adId = json['adId'];
    adType = json['adType'];
    pic = json['pic'];
    click = json['click'];
    wh = json['wh'];
    status = json['status'];
  }
}