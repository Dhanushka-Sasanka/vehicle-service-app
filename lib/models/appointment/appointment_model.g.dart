// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppointmentModel _$$_AppointmentModelFromJson(Map<String, dynamic> json) =>
    _$_AppointmentModel(
      vehicleID: json['vehicleID'] as int,
      serviceID: json['serviceID'] as String,
      pickDate: DateTime.parse(json['pickDate'] as String),
      pickTime: DateTime.parse(json['pickTime'] as String),
      servicePrice: (json['servicePrice'] as num).toDouble(),
      userID: json['userID'] as int,
    );

Map<String, dynamic> _$$_AppointmentModelToJson(_$_AppointmentModel instance) =>
    <String, dynamic>{
      'vehicleID': instance.vehicleID,
      'serviceID': instance.serviceID,
      'pickDate': instance.pickDate.toIso8601String(),
      'pickTime': instance.pickTime.toIso8601String(),
      'servicePrice': instance.servicePrice,
      'userID': instance.userID,
    };

_$_AppointmentDataModel _$$_AppointmentDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_AppointmentDataModel(
      appID: json['appID'] as int,
      vehicleID: json['vehicleID'] as int,
      userID: json['userID'] as String,
      date: DateTime.parse(json['date'] as String),
      time: DateTime.parse(json['time'] as String),
      status: json['status'] as String,
      feedbackID: json['feedbackID'] as String?,
      serviceID: json['service_ID'] as String,
      price: json['price'] as String,
    );

Map<String, dynamic> _$$_AppointmentDataModelToJson(
        _$_AppointmentDataModel instance) =>
    <String, dynamic>{
      'appID': instance.appID,
      'vehicleID': instance.vehicleID,
      'userID': instance.userID,
      'date': instance.date.toIso8601String(),
      'time': instance.time.toIso8601String(),
      'status': instance.status,
      'feedbackID': instance.feedbackID,
      'service_ID': instance.serviceID,
      'price': instance.price,
    };
