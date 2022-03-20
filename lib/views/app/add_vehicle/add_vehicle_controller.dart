import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:vehicle_app/models/_shared/http_response/http_response_model.dart';
import 'package:vehicle_app/models/vehicle/vehicle_model.dart';
import 'package:vehicle_app/routes/app_router.gr.dart';
import 'package:vehicle_app/services/vehicle/vehicle_service.dart';
import 'package:vehicle_app/utils/constants.dart';

class AddVehicleController extends GetxController {
  final formKey = GlobalKey<FormBuilderState>().obs;
  final vehicleTypes = ["CAR", "VAN", "LORRY"].obs;
  var isLoading = false.obs;
  final VehicleService _vehicleService = Get.find<VehicleService>();
  addVehicle(BuildContext context) async {
    if (formKey.value.currentState!.saveAndValidate()) {
      if (kDebugMode) {
        print(formKey.value.currentState!.value);
      }
      isLoading.value = true;
      HTTPResponseModel resp = await _vehicleService.addVehicle(AddVehicleModel(
          regNo: formKey.value.currentState!.value["regNo"],
          vehicleType: formKey.value.currentState!.value["vehicleType"],
          customerID: userIdDemo));
      isLoading.value = false;
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(resp.status ? "Success" : "Error")));
      if (resp.status) {
        AutoRouter.of(context).replace(const HomeRoute());
      }
    }
  }
}
