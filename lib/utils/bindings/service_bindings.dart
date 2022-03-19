import 'package:get/get.dart';
import 'package:vehicle_app/services/appointment/appointment_service.dart';
import 'package:vehicle_app/services/auth/auth_service.dart';
import 'package:vehicle_app/services/auth/token_manager.dart';
import 'package:vehicle_app/services/service/service_service.dart';
import 'package:vehicle_app/services/vehicle/vehicle_service.dart';

class ServiceBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(TokenManager());
    Get.put(AuthService());
    Get.put(ServiceService());
    Get.put(AppointmentService());
    Get.put(VehicleService());
  }
}
