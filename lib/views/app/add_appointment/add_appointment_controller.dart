import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:vehicle_app/models/_shared/http_response/http_response_model.dart';
import 'package:vehicle_app/models/appointment/appointment_model.dart';
import 'package:vehicle_app/models/service/service_model.dart';
import 'package:vehicle_app/models/vehicle/vehicle_model.dart';
import 'package:vehicle_app/routes/app_router.gr.dart';
import 'package:vehicle_app/services/appointment/appointment_service.dart';
import 'package:vehicle_app/services/service/service_service.dart';
import 'package:vehicle_app/services/vehicle/vehicle_service.dart';
import 'package:vehicle_app/utils/constants.dart';

class AddAppointmentController extends GetxController {
  final formKey = GlobalKey<FormBuilderState>().obs;
  var isLoading = false.obs;
  var services = <ServiceModel>[].obs;
  var vehicles = <VehicleModel>[].obs;
  final ServiceService _serviceService = Get.find<ServiceService>();
  final VehicleService _vehicleService = Get.find<VehicleService>();
  final AppointmentService _appointmentService = Get.find<AppointmentService>();
  @override
  void onReady() {
    getAllServices();
    getAllVehicles();
    super.onReady();
  }

  getAllServices() async {
    try {
      List<ServiceModel> listServices = await _serviceService.getAllServices();
      services.value = listServices;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  getAllVehicles() async {
    try {
      List<VehicleModel> listVehicles =
          await _vehicleService.getAllVehicles(userIdDemo);
      vehicles.value = listVehicles;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  selectService(String? serviceID) {
    ServiceModel? selectedService =
        services.firstWhereOrNull((service) => service.serviceID == serviceID);
    formKey.value.currentState!.patchValue({
      'servicePrice': selectedService != null ? selectedService.price : '0.0'
    });
  }

  addAppointment(BuildContext context) async {
    Get.snackbar("Success", "Message");
    if (formKey.value.currentState!.saveAndValidate()) {
      if (kDebugMode) {
        print(formKey.value.currentState!.value);
      }

      isLoading.value = true;
      HTTPResponseModel resp = await _appointmentService.addAppointment(
          AppointmentModel(
              vehicleID: formKey.value.currentState!.value["vehicle"],
              serviceID: formKey.value.currentState!.value["service"],
              pickDate: formKey.value.currentState!.value["pickDate"],
              pickTime: formKey.value.currentState!.value["pickDate"],
              servicePrice: double.tryParse(
                      formKey.value.currentState!.value["servicePrice"]) ??
                  0,
              userID: 23));
      isLoading.value = false;
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(resp.status ? "Success" : "Error")));
      if (resp.status) {
        AutoRouter.of(context).replace(const HomeRoute());
      }
    }
  }
}
