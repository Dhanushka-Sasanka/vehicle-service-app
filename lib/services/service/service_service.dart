import 'package:flutter/foundation.dart';
import 'package:vehicle_app/config/config_handler.dart';
import 'package:vehicle_app/config/model/api_config.dart';
import 'package:vehicle_app/models/service/service_model.dart';
import 'package:vehicle_app/services/base_service.dart';

class ServiceService extends BaseService {
  final ServiceApis? _serviceApiConfigHandler =
      ConfigHandler.loadAPIConfigs()?.serviceApis;

  Future<List<ServiceModel>> getAllServices() async {
    try {
      var response = await dio.get(_serviceApiConfigHandler!.getAllServices);
      return [];
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return [];
    }
  }
}
