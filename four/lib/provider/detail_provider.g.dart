// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      id: (json['id'] as num).toInt(),
      content: json['content'] as String,
      likes: (json['likes'] as num).toInt(),
      isLike: json['isLike'] as bool,
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'likes': instance.likes,
      'isLike': instance.isLike,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$detailHash() => r'914be1336873c8db2a334fea60cc9613de7ec37c';

/// See also [Detail].
@ProviderFor(Detail)
final detailProvider =
    AutoDisposeNotifierProvider<Detail, DetailState>.internal(
  Detail.new,
  name: r'detailProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$detailHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Detail = AutoDisposeNotifier<DetailState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
