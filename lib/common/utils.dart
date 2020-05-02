/// 工具
class Utils {

  /// 读取时间戳并返回时间字符串
  ///  * [timestamp] 时间戳
  static String readTimestamp(int timestamp) {
    String temp = '';
    if (isEmpty(timestamp)) {
      return temp;
    }

    try {
      int now = (new DateTime.now().millisecondsSinceEpoch ~/ 1000);
      int diff = now - timestamp;
      int months = (diff ~/ (60 * 60 * 24 * 30));
      int days = (diff ~/ (60 * 60 * 24));
      int hours = ((diff - days * (60 * 60 * 24)) ~/ (60 * 60));
      int minutes = ((diff - days * (60 * 60 * 24) - hours * (60 * 60)) ~/ 60);
      if (months > 0) {
        temp = months.toString() + '月前';
      } else if (days > 0) {
        temp = days.toString() + '天前';
      } else if (hours > 0) {
        temp = hours.toString() + '小时前';
      } else {
        temp = minutes.toString() + '分钟前';
      }
    } catch(e) {
      print(e.toString());
    }
    return temp;
  }

  /// 是否为空
  /// * [obj] 动态输入值
  static bool isEmpty(dynamic obj) {
    return obj == null || obj == 0 || obj == '' || obj == "" || obj == "null";
  }
}