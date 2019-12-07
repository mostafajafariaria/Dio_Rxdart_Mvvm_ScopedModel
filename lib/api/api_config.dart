import 'package:dio/dio.dart';

import 'logging_interceptor.dart';
import 'option_base.dart';

class ApiConfig {


  static Dio create (){

    Dio _dio;
    _dio = Dio(BaseOptionApi());
    _dio.interceptors.add(LoggingInterceptor());

    return _dio;

  }


}