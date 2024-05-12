// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'headline_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HeadlineModel _$HeadlineModelFromJson(Map<String, dynamic> json) {
  return _HeadlineModel.fromJson(json);
}

/// @nodoc
mixin _$HeadlineModel {
  String? get author => throw _privateConstructorUsedError;
  set author(String? value) => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  set title(String? value) => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  set description(String? value) => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  set url(String? value) => throw _privateConstructorUsedError;
  String? get urlToImage => throw _privateConstructorUsedError;
  set urlToImage(String? value) => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  set content(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeadlineModelCopyWith<HeadlineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeadlineModelCopyWith<$Res> {
  factory $HeadlineModelCopyWith(
          HeadlineModel value, $Res Function(HeadlineModel) then) =
      _$HeadlineModelCopyWithImpl<$Res, HeadlineModel>;
  @useResult
  $Res call(
      {String? author,
      String? title,
      String? description,
      String? url,
      String? urlToImage,
      String? content});
}

/// @nodoc
class _$HeadlineModelCopyWithImpl<$Res, $Val extends HeadlineModel>
    implements $HeadlineModelCopyWith<$Res> {
  _$HeadlineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? urlToImage = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: freezed == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeadlineModelImplCopyWith<$Res>
    implements $HeadlineModelCopyWith<$Res> {
  factory _$$HeadlineModelImplCopyWith(
          _$HeadlineModelImpl value, $Res Function(_$HeadlineModelImpl) then) =
      __$$HeadlineModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? author,
      String? title,
      String? description,
      String? url,
      String? urlToImage,
      String? content});
}

/// @nodoc
class __$$HeadlineModelImplCopyWithImpl<$Res>
    extends _$HeadlineModelCopyWithImpl<$Res, _$HeadlineModelImpl>
    implements _$$HeadlineModelImplCopyWith<$Res> {
  __$$HeadlineModelImplCopyWithImpl(
      _$HeadlineModelImpl _value, $Res Function(_$HeadlineModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? urlToImage = freezed,
    Object? content = freezed,
  }) {
    return _then(_$HeadlineModelImpl(
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: freezed == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeadlineModelImpl extends _HeadlineModel {
  _$HeadlineModelImpl(
      {this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.content})
      : super._();

  factory _$HeadlineModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeadlineModelImplFromJson(json);

  @override
  String? author;
  @override
  String? title;
  @override
  String? description;
  @override
  String? url;
  @override
  String? urlToImage;
  @override
  String? content;

  @override
  String toString() {
    return 'HeadlineModel(author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, content: $content)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HeadlineModelImplCopyWith<_$HeadlineModelImpl> get copyWith =>
      __$$HeadlineModelImplCopyWithImpl<_$HeadlineModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeadlineModelImplToJson(
      this,
    );
  }
}

abstract class _HeadlineModel extends HeadlineModel {
  factory _HeadlineModel(
      {String? author,
      String? title,
      String? description,
      String? url,
      String? urlToImage,
      String? content}) = _$HeadlineModelImpl;
  _HeadlineModel._() : super._();

  factory _HeadlineModel.fromJson(Map<String, dynamic> json) =
      _$HeadlineModelImpl.fromJson;

  @override
  String? get author;
  set author(String? value);
  @override
  String? get title;
  set title(String? value);
  @override
  String? get description;
  set description(String? value);
  @override
  String? get url;
  set url(String? value);
  @override
  String? get urlToImage;
  set urlToImage(String? value);
  @override
  String? get content;
  set content(String? value);
  @override
  @JsonKey(ignore: true)
  _$$HeadlineModelImplCopyWith<_$HeadlineModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
