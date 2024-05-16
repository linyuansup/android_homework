import 'package:four/network/network.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'detail_provider.freezed.dart';
part 'detail_provider.g.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState({
    required List<Comment> comments,
  }) = _DetailState;
}

@freezed
class Comment with _$Comment {
  const factory Comment({
    required int id,
    required String content,
    required int likes,
    required bool isLike,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}

@riverpod
class Detail extends _$Detail {
  @override
  DetailState build() {
    return const DetailState(comments: []);
  }

  Future<void> refreshComment() async {
    await Network.getComment().then((response) {
      state = DetailState(comments: response.comments);
    });
  }

  Future<void> changeLike(int id) async {
    final index = state.comments.indexWhere((comment) => comment.id == id);
    if (index == -1) {
      return;
    }
    await Network.like(id);
    if (state.comments[index].isLike) {
      state = state.copyWith(
        comments: [
          ...state.comments.sublist(0, index),
          state.comments[index]
              .copyWith(likes: state.comments[index].likes - 1, isLike: false),
          ...state.comments.sublist(index + 1),
        ],
      );
    } else {
      state = state.copyWith(
        comments: [
          ...state.comments.sublist(0, index),
          state.comments[index]
              .copyWith(likes: state.comments[index].likes + 1, isLike: true),
          ...state.comments.sublist(index + 1),
        ],
      );
    }
  }
}
