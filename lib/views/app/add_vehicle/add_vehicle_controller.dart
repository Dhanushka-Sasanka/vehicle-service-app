import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:vehicle_app/models/_shared/http_response/http_response_model.dart';
import 'package:vehicle_app/models/vehicle/vehicle_model.dart';
import 'package:vehicle_app/services/vehicle/vehicle_service.dart';
import 'package:vehicle_app/views/app/home_base_controller.dart';

class AddVehicleController extends GetxController {
  final formKey = GlobalKey<FormBuilderState>().obs;
  final vehicleTypes = ["CAR"].obs;
  var isLoading = false.obs;
  final VehicleService _vehicleService = Get.find<VehicleService>();
  addVehicle(BuildContext context) async {
    if (formKey.value.currentState!.saveAndValidate()) {
      if (kDebugMode) {
        print(formKey.value.currentState!.value);
      }
      // isLoading.value = true;
      // HTTPResponseModel resp = await _vehicleService.addVehicle(VehicleModel(
      //     vehicleID: "",
      //     regNo: formKey.value.currentState!.value["regNo"],
      //     vehicleType: formKey.value.currentState!.value["vehicleType"],
      //     customerID: userIdDemo));
      // isLoading.value = false;
      // Get.snackbar(resp.status ? "Success" : "Error", resp.message);
      // if (resp.status) {
      //   AutoRouter.of(context).pop();
      // }
    }
  }
}
