// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShowCategoryModelImpl _$$ShowCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ShowCategoryModelImpl(
      author: json['author'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      urlToImage: json['urlToImage'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$ShowCategoryModelImplToJson(
        _$ShowCategoryModelImpl instance) =>
    <String, dynamic>{
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.urlToImage,
      'content': instance.content,
    };
