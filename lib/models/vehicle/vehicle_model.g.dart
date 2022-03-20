// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleModel _$$_VehicleModelFromJson(Map<String, dynamic> json) =>
    _$_VehicleModel(
      vehicleID: json['vehicleID'] as int?,
      vehicleType: json['vehicleType'] as String,
      regNo: json['regNo'] as String,
      customerID: json['customerID'] as int,
    );

Map<String, dynamic> _$$_VehicleModelToJson(_$_VehicleModel instance) =>
    <String, dynamic>{
      'vehicleID': instance.vehicleID,
      'vehicleType': instance.vehicleType,
      'regNo': instance.regNo,
      'customerID': instance.customerID,
    };

_$_AddVehicleModel _$$_AddVehicleModelFromJson(Map<String, dynamic> json) =>
    _$_AddVehicleModel(
      vehicleType: json['vehicleType'] as String,
      regNo: json['regNo'] as String,
      customerID: json['customerID'] as int,
    );

Map<String, dynamic> _$$_AddVehicleModelToJson(_$_AddVehicleModel instance) =>
    <String, dynamic>{
      'vehicleType': instance.vehicleType,
      'regNo': instance.regNo,
      'customerID': instance.customerID,
    };
