import 'package:auto_route/auto_route.dart';
import 'package:vehicle_app/views/app/add_appointment/add_appointment_screen.dart';
import 'package:vehicle_app/views/app/add_vehicle/add_vehicle_screen.dart';
import 'package:vehicle_app/views/app/appointment_history/appointment_history_screen.dart';
import 'package:vehicle_app/views/app/home/home_screen.dart';
import 'package:vehicle_app/views/app/home_base.dart';
import 'package:vehicle_app/views/app/my_vehicles/my_vehicles_screen.dart';
import 'package:vehicle_app/views/auth/login/login_screen.dart';
import 'package:vehicle_app/views/auth/singup/signup_screen.dart';
import 'guards/auth.guard.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginScreen, path: '/login'),
    AutoRoute(page: SignUpScreen, path: '/signup'),
    AutoRoute(page: HomeBase, path: '/home', initial: true, guards: [
      AuthGuard
    ], children: [
      AutoRoute(page: HomeScreen, initial: true),
      AutoRoute(page: AddVehicleScreen, path: 'add-vehicle'),
      AutoRoute(page: MyVehiclesScreen, path: 'my-vehicles'),
      AutoRoute(page: AddAppointmentScreen, path: 'add-appointment'),
      AutoRoute(page: AppointmentHistoryScreen, path: 'appointment-history'),
    ]),
  ],
)
class $AppRouter {}
