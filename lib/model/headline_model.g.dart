// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'headline_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HeadlineModelImpl _$$HeadlineModelImplFromJson(Map<String, dynamic> json) =>
    _$HeadlineModelImpl(
      author: json['author'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      urlToImage: json['urlToImage'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$HeadlineModelImplToJson(_$HeadlineModelImpl instance) =>
    <String, dynamic>{
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.urlToImage,
      'content': instance.content,
    };
