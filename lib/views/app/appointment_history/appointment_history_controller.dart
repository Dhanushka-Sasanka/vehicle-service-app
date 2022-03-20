import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:vehicle_app/models/appointment/appointment_model.dart';
import 'package:vehicle_app/services/appointment/appointment_service.dart';
import 'package:vehicle_app/utils/constants.dart';

class AppointmentHistoryController extends GetxController {
  var myAppointments = <AppointmentDataModel>[].obs;

  final AppointmentService _appointmentService = Get.find<AppointmentService>();
  @override
  void onReady() {
    getAllVehicles();
    super.onReady();
  }

  getAllVehicles() async {
    try {
      List<AppointmentDataModel> listAppointments =
          await _appointmentService.getAllAppointments(userIdDemo);
      myAppointments.value = listAppointments;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
