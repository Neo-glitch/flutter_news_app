import 'package:dio/dio.dart';
import 'package:flutter_news_app/api/api_client.dart';
import 'package:flutter_news_app/model/article_model.dart';
import 'package:flutter_news_app/model/headline_model.dart';
import 'package:flutter_news_app/model/show_category_model.dart';
import 'package:flutter_news_app/util/network_helpers.dart';

class NewsService {
  static NewsService? _instance;
  factory NewsService() => _instance ??= NewsService._internal();

  NewsService._internal();

  Future<List<ArticleModel>> getNews({String keywords = "news"}) async {
    List<ArticleModel> articles = [];
    Response response = await ApiClient()
        .dio
        .get("everything?q=$keywords&apiKey=$NEWS_API_KEY");

    final jsonData = response.data;

    if (jsonData["status"] == "ok") {
      // successfully fetched
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          ArticleModel articleModel = ArticleModel.fromJson(element);
          articles.add(articleModel);
        }
      });
    }

    // print("${articles.length}\n");
    // print("\n${articles[0].toString()}\n");
    // print("${response.data}");

    return articles;
  }

  Future<List<HeadlineModel>> getTopHeadlines({String country = "us"}) async {
    List<HeadlineModel> headlines = [];
    Response response = await ApiClient()
        .dio
        .get("top-headlines?country=$country&apiKey=$NEWS_API_KEY");

    final jsonData = response.data;

    if (jsonData["status"] == "ok") {
      // successfully fetched
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          HeadlineModel headlineModel = HeadlineModel.fromJson(element);
          headlines.add(headlineModel);
        }
      });
    }

    return headlines;
  }

  Future<List<ShowCategoryModel>> getHeadlinesByCategory(String category,
      {String country = "us"}) async {
    List<ShowCategoryModel> headlines = [];

    Response response = await ApiClient().dio.get(
        "top-headlines?country=$country&category=$category&apiKey=$NEWS_API_KEY");
    final jsonData = response.data;

    if (jsonData["status"] == "ok") {
      // successfully fetched
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          ShowCategoryModel showCategoryModel =
              ShowCategoryModel.fromJson(element);
          headlines.add(showCategoryModel);
        }
      });
    }

    return headlines;
  }
}
