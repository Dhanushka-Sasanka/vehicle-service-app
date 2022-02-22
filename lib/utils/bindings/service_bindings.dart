import 'package:get/get.dart';
import 'package:vehicle_app/services/auth/auth_service.dart';
import 'package:vehicle_app/services/auth/token_manager.dart';

class ServiceBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(TokenManager());
    Get.put(AuthService());
  }
}
