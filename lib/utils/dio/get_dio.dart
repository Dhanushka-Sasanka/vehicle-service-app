import 'package:dio/dio.dart';
import 'package:vehicle_app/config/config_handler.dart';
import 'package:vehicle_app/utils/dio/interceptors/token_intercepter.dart';

class GetDio {
  static Dio dio() {
    BaseOptions options =
        BaseOptions(baseUrl: ConfigHandler.loadAPIConfigs()!.baseApiUrl);
    Dio dio = Dio(options);
    dio.interceptors.add(TokenInterceptor());
    dio.interceptors.add(LogInterceptor(responseBody: true));
    return dio;
  }
}
