import 'package:auto_route/auto_route.dart';
import 'package:get/get.dart';
import 'package:vehicle_app/routes/app_router.gr.dart';
import 'package:vehicle_app/services/auth/token_manager.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (isAuthenticated()) {
      resolver.next();
    } else {
      resolver.next(false);
      router.replace(const LoginRoute());
    }
  }

  bool isAuthenticated() {
    TokenManager _tokenManager = Get.find<TokenManager>();
    String? accessToken = _tokenManager.getAccessToken().token;
    // Map<String, dynamic>? tokenData = JwtDecoder.tryDecode(accessToken ?? '');
    // return tokenData != null &&
    //     !JwtDecoder.isExpired(accessToken!) &&
    //     tokenData["user"]!["userRole"] == 'customer';
    return accessToken != null;
  }
}
