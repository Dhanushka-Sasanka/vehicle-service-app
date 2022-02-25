import 'package:flutter/foundation.dart';
import 'package:vehicle_app/config/config_handler.dart';
import 'package:vehicle_app/config/model/api_config.dart';
import 'package:vehicle_app/models/_shared/http_response/http_response_model.dart';
import 'package:vehicle_app/models/vehicle/vehicle_model.dart';
import 'package:vehicle_app/services/base_service.dart';

class VehicleService extends BaseService {
  final VehicleApis? _vehicleApiConfigHandler =
      ConfigHandler.loadAPIConfigs()?.vehicleApis;

  Future<List<VehicleModel>> getAllVehicles() async {
    try {
      var response = await dio.get(_vehicleApiConfigHandler!.getAllVehicles);
      return [];
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return [];
    }
  }

  Future<HTTPResponseModel> addVehicle(VehicleModel vehicleModel) async {
    try {
      var response = await dio.post(_vehicleApiConfigHandler!.addVehicle,
          data: vehicleModel.toJson());
      return const HTTPResponseModel(status: true);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return const HTTPResponseModel(
          status: false, message: "Application Error");
    }
  }
}
