import 'package:dio/dio.dart';

class BaseOptionApi extends BaseOptions {
  static final int _receiveTimeout = 5000;

  static final int _connectTimeout = 5000;

  static final String _baseUrl = "https://randomuser.me/";

  BaseOptionApi()
      : super(
            receiveTimeout: _receiveTimeout,
            connectTimeout: _connectTimeout,
            baseUrl: _baseUrl);
}
