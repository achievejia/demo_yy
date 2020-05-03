/// 关键字
class Keyword {
  String keyword;

  Keyword({this.keyword});

  Keyword.fromJson(Map<String, dynamic> json) {
    this.keyword = json['keyword'];
  }
}