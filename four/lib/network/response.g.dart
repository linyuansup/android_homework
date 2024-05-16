// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetCommentResponseImpl _$$GetCommentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetCommentResponseImpl(
      comments: (json['comments'] as List<dynamic>)
          .map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetCommentResponseImplToJson(
        _$GetCommentResponseImpl instance) =>
    <String, dynamic>{
      'comments': instance.comments,
    };
