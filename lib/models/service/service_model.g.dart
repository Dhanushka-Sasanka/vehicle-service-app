// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceModel _$$_ServiceModelFromJson(Map<String, dynamic> json) =>
    _$_ServiceModel(
      serviceID: json['serviceID'] as String,
      serviceType: json['serviceType'] as String,
      price: json['price'] as String,
    );

Map<String, dynamic> _$$_ServiceModelToJson(_$_ServiceModel instance) =>
    <String, dynamic>{
      'serviceID': instance.serviceID,
      'serviceType': instance.serviceType,
      'price': instance.price,
    };
