import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:vehicle_app/models/vehicle/vehicle_model.dart';
import 'package:vehicle_app/services/vehicle/vehicle_service.dart';
import 'package:vehicle_app/utils/constants.dart';

class MyVehiclesController extends GetxController {
  var myVehicles = <VehicleModel>[].obs;
  final VehicleService _vehicleService = Get.find<VehicleService>();
  @override
  void onReady() {
    getAllVehicles();
    super.onReady();
  }

  getAllVehicles() async {
    try {
      List<VehicleModel> listVehicles =
          await _vehicleService.getAllVehicles(userIdDemo);
      myVehicles.value = listVehicles;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
