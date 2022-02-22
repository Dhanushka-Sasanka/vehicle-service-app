// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HTTPResponseModel _$$_HTTPResponseModelFromJson(Map<String, dynamic> json) =>
    _$_HTTPResponseModel(
      status: json['status'] as bool,
      message: json['message'] as String? ?? '',
      data: json['data'],
    );

Map<String, dynamic> _$$_HTTPResponseModelToJson(
        _$_HTTPResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
