import 'package:dio/dio.dart';
import 'package:mvvm_soped_rxdart/model/user_response.dart';

import 'api_config.dart';
import 'endpoint.dart';
import 'error_handling.dart';


class MyApi {
  Dio _dio;

  MyApi() {
    _dio = ApiConfig.create();
  }

  Future<UserResponse> getUser() async {
    try {
      Response response = await _dio.get(EndPoint.endpoint);
      return UserResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return UserResponse.withError(ErrorHandling.getMessage(error));
    }
  }

}
