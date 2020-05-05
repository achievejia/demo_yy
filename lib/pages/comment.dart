import 'package:flutter/material.dart';
import 'package:yy_demo/models/article_comment.dart';

class CommentPage extends StatefulWidget {
  final String id;
  final String channel;

  const CommentPage({Key key, this.id, this.channel = "article"}) : super(key: key);

  @override
  _CommentPageState createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  String replayName = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("全部评论")
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 50.0),
              child: ,
            )
          ],
        ),
      ),
    );
  }

  List<Widget> _buildReplys(List<ArticleReply> replys) {
    return replys.map((v) => GestureDetector(
      onTap: () {
        setState(() {
          replayName = v.authorNickname;
        });
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 5.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "${v.authorNickname}:",
              style: TextStyle(color: Colors.blue),
            ),
            SizedBox(
              width: 8.0,
            ),
            Expanded(child: Text("${v.content}"),)
          ],
        ),
      ),
    )).toList();
  }
}