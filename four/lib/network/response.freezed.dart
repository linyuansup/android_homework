// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetCommentResponse _$GetCommentResponseFromJson(Map<String, dynamic> json) {
  return _GetCommentResponse.fromJson(json);
}

/// @nodoc
mixin _$GetCommentResponse {
  List<Comment> get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCommentResponseCopyWith<GetCommentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCommentResponseCopyWith<$Res> {
  factory $GetCommentResponseCopyWith(
          GetCommentResponse value, $Res Function(GetCommentResponse) then) =
      _$GetCommentResponseCopyWithImpl<$Res, GetCommentResponse>;
  @useResult
  $Res call({List<Comment> comments});
}

/// @nodoc
class _$GetCommentResponseCopyWithImpl<$Res, $Val extends GetCommentResponse>
    implements $GetCommentResponseCopyWith<$Res> {
  _$GetCommentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
  }) {
    return _then(_value.copyWith(
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCommentResponseImplCopyWith<$Res>
    implements $GetCommentResponseCopyWith<$Res> {
  factory _$$GetCommentResponseImplCopyWith(_$GetCommentResponseImpl value,
          $Res Function(_$GetCommentResponseImpl) then) =
      __$$GetCommentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Comment> comments});
}

/// @nodoc
class __$$GetCommentResponseImplCopyWithImpl<$Res>
    extends _$GetCommentResponseCopyWithImpl<$Res, _$GetCommentResponseImpl>
    implements _$$GetCommentResponseImplCopyWith<$Res> {
  __$$GetCommentResponseImplCopyWithImpl(_$GetCommentResponseImpl _value,
      $Res Function(_$GetCommentResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
  }) {
    return _then(_$GetCommentResponseImpl(
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetCommentResponseImpl implements _GetCommentResponse {
  const _$GetCommentResponseImpl({required final List<Comment> comments})
      : _comments = comments;

  factory _$GetCommentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetCommentResponseImplFromJson(json);

  final List<Comment> _comments;
  @override
  List<Comment> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'GetCommentResponse(comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCommentResponseImpl &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCommentResponseImplCopyWith<_$GetCommentResponseImpl> get copyWith =>
      __$$GetCommentResponseImplCopyWithImpl<_$GetCommentResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCommentResponseImplToJson(
      this,
    );
  }
}

abstract class _GetCommentResponse implements GetCommentResponse {
  const factory _GetCommentResponse({required final List<Comment> comments}) =
      _$GetCommentResponseImpl;

  factory _GetCommentResponse.fromJson(Map<String, dynamic> json) =
      _$GetCommentResponseImpl.fromJson;

  @override
  List<Comment> get comments;
  @override
  @JsonKey(ignore: true)
  _$$GetCommentResponseImplCopyWith<_$GetCommentResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
