import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:four/provider/detail_provider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('评论详情'),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final comments =
              ref.watch(detailProvider.select((value) => value.comments));
          return ListView.builder(
            padding: const EdgeInsets.only(bottom: 70),
            itemCount: comments.length,
            itemBuilder: (context, index) {
              final comment = comments[index];
              return ListTile(
                title: Text(comment.content),
                subtitle: Text('点赞数：${comment.likes}'),
                trailing: IconButton(
                  icon: Icon(
                      comment.isLike ? Icons.favorite : Icons.favorite_border),
                  onPressed: () {
                    ref.read(detailProvider.notifier).changeLike(comment.id);
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: Consumer(
        builder: (context, ref, child) {
          return FloatingActionButton(
            onPressed: () {
              ref.read(detailProvider.notifier).refreshComment();
            },
            child: const Icon(Icons.refresh),
          );
        },
      ),
    );
  }
}
