import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:vehicle_app/services/auth/token_manager.dart';

class TokenInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    TokenManager _tokenManager = Get.find<TokenManager>();
    String? accessToken = _tokenManager.getAccessToken().token;
    options.headers['auth-token'] = accessToken;
    // options.headers['Authorization'] = 'Bearer $accessToken';
    super.onRequest(options, handler);
  }

  // @override
  // void onError(DioError err, ErrorInterceptorHandler handler) {
  //   super.onError(err, handler);
  // }
}
