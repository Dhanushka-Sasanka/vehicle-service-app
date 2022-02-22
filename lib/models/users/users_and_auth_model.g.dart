// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_and_auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterUser _$$RegisterUserFromJson(Map<String, dynamic> json) =>
    _$RegisterUser(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      nic: json['nic'] as String,
      contact: json['contact'] as String,
      password: json['password'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RegisterUserToJson(_$RegisterUser instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'nic': instance.nic,
      'contact': instance.contact,
      'password': instance.password,
      'runtimeType': instance.$type,
    };

_$LoginUser _$$LoginUserFromJson(Map<String, dynamic> json) => _$LoginUser(
      email: json['email'] as String,
      password: json['password'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoginUserToJson(_$LoginUser instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'runtimeType': instance.$type,
    };

_$LoginAuthToken _$$LoginAuthTokenFromJson(Map<String, dynamic> json) =>
    _$LoginAuthToken(
      token: json['token'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoginAuthTokenToJson(_$LoginAuthToken instance) =>
    <String, dynamic>{
      'token': instance.token,
      'runtimeType': instance.$type,
    };
