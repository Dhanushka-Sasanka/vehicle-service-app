import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicle_app/utils/common_app_bar.dart';
import 'package:vehicle_app/views/app/home_base_controller.dart';

class AppRouteObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    if (Get.isRegistered<HomeBaseController>()) {
      Future.microtask(
        () => Get.find<HomeBaseController>().appBar.value =
            CommonAppBar.getAppBar(route.settings.name),
      );
    }
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    if (Get.isRegistered<HomeBaseController>()) {
      Future.microtask(
        () => Get.find<HomeBaseController>().appBar.value =
            CommonAppBar.getAppBar(previousRoute?.settings.name),
      );
    }
  }
}
