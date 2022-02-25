import 'package:flutter/material.dart';
import 'package:vehicle_app/routes/app_router.gr.dart';

class CommonAppBar {
  static AppBar getAppBar(String? routerName) {
    late String title;
    switch (routerName) {
      case AddAppointmentRoute.name:
        title = "Add Appointment";
        break;
      case AddVehicleRoute.name:
        title = "Add Vehicle";
        break;
      case AppointmentHistoryRoute.name:
        title = "Appointment History";
        break;
      case MyVehiclesRoute.name:
        title = "My Vehicles";
        break;
      default:
        title = "Vehicle App";
    }
    return AppBar(
      title: Text(title),
    );
  }
}
