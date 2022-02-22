// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../views/app/add_appointment/add_appointment_screen.dart' as _i7;
import '../views/app/add_vehicle/add_vehicle_screen.dart' as _i5;
import '../views/app/appointment_history/appointment_history_screen.dart'
    as _i8;
import '../views/app/home/home_screen.dart' as _i4;
import '../views/app/home_base.dart' as _i3;
import '../views/app/my_vehicles/my_vehicles_screen.dart' as _i6;
import '../views/auth/login/login_screen.dart' as _i1;
import '../views/auth/singup/signup_screen.dart' as _i2;
import 'guards/auth.guard.dart' as _i11;

class AppRouter extends _i9.RootStackRouter {
  AppRouter(
      {_i10.GlobalKey<_i10.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i11.AuthGuard authGuard;

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LoginScreen());
    },
    SignUpRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignUpScreen());
    },
    HomeBase.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomeBase());
    },
    HomeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomeScreen());
    },
    AddVehicleRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.AddVehicleScreen());
    },
    MyVehiclesRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.MyVehiclesScreen());
    },
    AddAppointmentRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.AddAppointmentScreen());
    },
    AppointmentHistoryRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.AppointmentHistoryScreen());
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig('/#redirect',
            path: '/', redirectTo: '/home', fullMatch: true),
        _i9.RouteConfig(LoginRoute.name, path: '/login'),
        _i9.RouteConfig(SignUpRoute.name, path: '/signup'),
        _i9.RouteConfig(HomeBase.name, path: '/home', guards: [
          authGuard
        ], children: [
          _i9.RouteConfig(HomeRoute.name, path: '', parent: HomeBase.name),
          _i9.RouteConfig(AddVehicleRoute.name,
              path: 'add-vehicle', parent: HomeBase.name),
          _i9.RouteConfig(MyVehiclesRoute.name,
              path: 'my-vehicles', parent: HomeBase.name),
          _i9.RouteConfig(AddAppointmentRoute.name,
              path: 'add-appointment', parent: HomeBase.name),
          _i9.RouteConfig(AppointmentHistoryRoute.name,
              path: 'appointment-history', parent: HomeBase.name)
        ])
      ];
}

/// generated route for
/// [_i1.LoginScreen]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.SignUpScreen]
class SignUpRoute extends _i9.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/signup');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i3.HomeBase]
class HomeBase extends _i9.PageRouteInfo<void> {
  const HomeBase({List<_i9.PageRouteInfo>? children})
      : super(HomeBase.name, path: '/home', initialChildren: children);

  static const String name = 'HomeBase';
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.AddVehicleScreen]
class AddVehicleRoute extends _i9.PageRouteInfo<void> {
  const AddVehicleRoute() : super(AddVehicleRoute.name, path: 'add-vehicle');

  static const String name = 'AddVehicleRoute';
}

/// generated route for
/// [_i6.MyVehiclesScreen]
class MyVehiclesRoute extends _i9.PageRouteInfo<void> {
  const MyVehiclesRoute() : super(MyVehiclesRoute.name, path: 'my-vehicles');

  static const String name = 'MyVehiclesRoute';
}

/// generated route for
/// [_i7.AddAppointmentScreen]
class AddAppointmentRoute extends _i9.PageRouteInfo<void> {
  const AddAppointmentRoute()
      : super(AddAppointmentRoute.name, path: 'add-appointment');

  static const String name = 'AddAppointmentRoute';
}

/// generated route for
/// [_i8.AppointmentHistoryScreen]
class AppointmentHistoryRoute extends _i9.PageRouteInfo<void> {
  const AppointmentHistoryRoute()
      : super(AppointmentHistoryRoute.name, path: 'appointment-history');

  static const String name = 'AppointmentHistoryRoute';
}
