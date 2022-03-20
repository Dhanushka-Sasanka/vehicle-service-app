import 'package:freezed_annotation/freezed_annotation.dart';
part 'vehicle_model.freezed.dart';
part 'vehicle_model.g.dart';

@freezed
class VehicleModel with _$VehicleModel {
  const factory VehicleModel({
    int? vehicleID,
    required String vehicleType,
    required String regNo,
    required int customerID,
  }) = _VehicleModel;

  factory VehicleModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleModelFromJson(json);
}

@freezed
class AddVehicleModel with _$AddVehicleModel {
  const factory AddVehicleModel({
    required String vehicleType,
    required String regNo,
    required int customerID,
  }) = _AddVehicleModel;

  factory AddVehicleModel.fromJson(Map<String, dynamic> json) =>
      _$AddVehicleModelFromJson(json);
}
