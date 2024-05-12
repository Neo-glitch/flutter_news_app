import 'package:dio/dio.dart';
import 'package:flutter_news_app/util/network_helpers.dart';

class ApiClient {
  // private constructor
  ApiClient._internal();
  static final ApiClient _instance = ApiClient._internal();
  factory ApiClient() => _instance;

  Dio? _dio;

  Dio get dio {
    if (_dio == null) {
      // new Instance of dio
      var dio = Dio(BaseOptions(
        baseUrl: BASE_URL,
        receiveTimeout: const Duration(seconds: 30),
        connectTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
      ));

      // incases of adding any interceptors

      return dio;
    }
    return _dio!;
  }
}
