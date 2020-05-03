import 'package:flutter/material.dart';

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
    return null;
  }
}