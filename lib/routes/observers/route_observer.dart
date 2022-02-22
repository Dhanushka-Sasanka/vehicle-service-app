import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class RouteObserver extends AutoRouteObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    print('New route pushed: ${route.settings.name}');
  }
}
