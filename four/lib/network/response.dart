import 'package:four/provider/detail_provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.freezed.dart';
part 'response.g.dart';

@freezed
class GetCommentResponse with _$GetCommentResponse {
  const factory GetCommentResponse({
    required List<Comment> comments,
  }) = _GetCommentResponse;

  factory GetCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$GetCommentResponseFromJson(json);
}