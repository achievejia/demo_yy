import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:yy_demo/pages/reply.dart';
import 'package:yy_demo/redux/states/main.dart';
import 'package:yy_demo/redux/view_models/dynamic.dart';
import 'package:yy_demo/widgets/hot_comment_listtile.dart';

class HotCommentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<ReduxState, DynamicViewModel>(
        converter: (store) => DynamicViewModel(store),
        builder: (context, vm) {
          return vm.isLoading
              ? Center(child: CircularProgressIndicator())
              : ListView.separated(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => Divider(
                        height: 1.0,
                        indent: 0.0,
                      ),
                  itemCount: vm.comments.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: HotCommentListTile(comment: vm.comments[index]),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ReplyPage(
                                    comment: vm.comments[index],
                                  )));
                        },
                      ),
                    );
                  },
                );
        });
  }
}
