import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicle_app/routes/app_router.gr.dart';
import 'package:vehicle_app/services/auth/token_manager.dart';
import 'package:vehicle_app/utils/common_app_bar.dart';

class HomeBaseController extends GetxController {
  var appBar = CommonAppBar.getAppBar(null).obs;
  // @override
  // void onReady() {
  //   super.onReady();
  // }

  logout(BuildContext context) async {
    TokenManager _tokenManager = Get.find<TokenManager>();
    await _tokenManager.removeTokens();
    AutoRouter.of(context).replace(const LoginRoute());
  }
}
