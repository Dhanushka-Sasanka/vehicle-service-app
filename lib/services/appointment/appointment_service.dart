import 'package:flutter/foundation.dart';
import 'package:vehicle_app/config/config_handler.dart';
import 'package:vehicle_app/config/model/api_config.dart';
import 'package:vehicle_app/models/_shared/http_response/http_response_model.dart';
import 'package:vehicle_app/models/appointment/appointment_model.dart';
import 'package:vehicle_app/services/base_service.dart';

class AppointmentService extends BaseService {
  final AppointmentApis? _appointmentApiConfigHandler =
      ConfigHandler.loadAPIConfigs()?.appointmentApis;

  Future<List<AppointmentDataModel>> getAllAppointments(int userId) async {
    try {
      var response = await dio
          .get("${_appointmentApiConfigHandler!.getAllAppointments}/$userId");
      return (response.data as List)
          .map((e) => AppointmentDataModel.fromJson(e))
          .toList();
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return [];
    }
  }

  Future<HTTPResponseModel> addAppointment(
      AppointmentModel appointmentModel) async {
    try {
      var response = await dio.post(
          _appointmentApiConfigHandler!.addAppointment,
          data: appointmentModel.toJson());

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
