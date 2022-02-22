import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicle_app/routes/app_router.gr.dart';
import 'package:vehicle_app/services/auth/token_manager.dart';

class HomeBaseController extends GetxController {
  var appBarTitle = "Vehicle App".obs;
  // @override
  // void onReady() {
  //   super.onReady();
  // }

  onNavigation(BuildContext context, int index) {
    // switch (index) {
    //   case 0:
    //     AutoRouter.of(context).replace(MapViewRoute());
    //     break;
    //   case 1:
    //     AutoRouter.of(context).replace(AddVehicleRoute());
    //     break;
    //   case 2:
    //     AutoRouter.of(context).replace(HomeRoute());
    //     break;
    //   case 3:
    //     AutoRouter.of(context).push(CalendarRoute());
    //     break;
    //   default:
    //     AutoRouter.of(context).replace(HomeRoute());
    // }
  }

  logout(BuildContext context) async {
    TokenManager _tokenManager = Get.find<TokenManager>();
    await _tokenManager.removeTokens();
    AutoRouter.of(context).replace(const LoginRoute());
  }
}
