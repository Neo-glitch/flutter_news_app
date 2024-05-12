// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'show_category_model.freezed.dart';

// for json serialization
part 'show_category_model.g.dart';

@unfreezed
class ShowCategoryModel with _$ShowCategoryModel {
  // String? author;
  // String? title;
  // String? description;
  // String? url;
  // String? urlToImage;
  // String? content;

  // ArticleModel({
  //   this.author,
  //   this.title,
  //   this.description,
  //   this.url,
  //   this.urlToImage,
  //   this.content,
  // });

  // Added constructor. Must not have any parameter
  // to enable calling defining of methods or added props in this class
  const ShowCategoryModel._();

  factory ShowCategoryModel({
    String? author,
    String? title,
    String? description,
    String? url,
    String? urlToImage,
    String? content,
  }) = _ShowCategoryModel;

  factory ShowCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ShowCategoryModelFromJson(json);
}
