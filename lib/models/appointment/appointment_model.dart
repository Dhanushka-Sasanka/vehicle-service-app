import 'package:freezed_annotation/freezed_annotation.dart';
part 'appointment_model.freezed.dart';
part 'appointment_model.g.dart';

@freezed
class AppointmentModel with _$AppointmentModel {
  const factory AppointmentModel({
    required int vehicleID,
    required String serviceID,
    required DateTime pickDate,
    required DateTime pickTime,
    required double servicePrice,
    required int userID,
  }) = _AppointmentModel;

  factory AppointmentModel.fromJson(Map<String, dynamic> json) =>
      _$AppointmentModelFromJson(json);
}

@freezed
class AppointmentDataModel with _$AppointmentDataModel {
  const factory AppointmentDataModel({
    required int appID,
    required int vehicleID,
    required String userID,
    required DateTime date,
    required DateTime time,
    required String status,
    String? feedbackID,
    @JsonKey(name: "service_ID") required String serviceID,
    required String price,
  }) = _AppointmentDataModel;

  factory AppointmentDataModel.fromJson(Map<String, dynamic> json) =>
      _$AppointmentDataModelFromJson(json);
}
