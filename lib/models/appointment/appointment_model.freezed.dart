// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'appointment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppointmentModel _$AppointmentModelFromJson(Map<String, dynamic> json) {
  return _AppointmentModel.fromJson(json);
}

/// @nodoc
class _$AppointmentModelTearOff {
  const _$AppointmentModelTearOff();

  _AppointmentModel call(
      {required int vehicleID,
      required String serviceID,
      required DateTime pickDate,
      required DateTime pickTime,
      required double servicePrice,
      required int userID}) {
    return _AppointmentModel(
      vehicleID: vehicleID,
      serviceID: serviceID,
      pickDate: pickDate,
      pickTime: pickTime,
      servicePrice: servicePrice,
      userID: userID,
    );
  }

  AppointmentModel fromJson(Map<String, Object?> json) {
    return AppointmentModel.fromJson(json);
  }
}

/// @nodoc
const $AppointmentModel = _$AppointmentModelTearOff();

/// @nodoc
mixin _$AppointmentModel {
  int get vehicleID => throw _privateConstructorUsedError;
  String get serviceID => throw _privateConstructorUsedError;
  DateTime get pickDate => throw _privateConstructorUsedError;
  DateTime get pickTime => throw _privateConstructorUsedError;
  double get servicePrice => throw _privateConstructorUsedError;
  int get userID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentModelCopyWith<AppointmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentModelCopyWith<$Res> {
  factory $AppointmentModelCopyWith(
          AppointmentModel value, $Res Function(AppointmentModel) then) =
      _$AppointmentModelCopyWithImpl<$Res>;
  $Res call(
      {int vehicleID,
      String serviceID,
      DateTime pickDate,
      DateTime pickTime,
      double servicePrice,
      int userID});
}

/// @nodoc
class _$AppointmentModelCopyWithImpl<$Res>
    implements $AppointmentModelCopyWith<$Res> {
  _$AppointmentModelCopyWithImpl(this._value, this._then);

  final AppointmentModel _value;
  // ignore: unused_field
  final $Res Function(AppointmentModel) _then;

  @override
  $Res call({
    Object? vehicleID = freezed,
    Object? serviceID = freezed,
    Object? pickDate = freezed,
    Object? pickTime = freezed,
    Object? servicePrice = freezed,
    Object? userID = freezed,
  }) {
    return _then(_value.copyWith(
      vehicleID: vehicleID == freezed
          ? _value.vehicleID
          : vehicleID // ignore: cast_nullable_to_non_nullable
              as int,
      serviceID: serviceID == freezed
          ? _value.serviceID
          : serviceID // ignore: cast_nullable_to_non_nullable
              as String,
      pickDate: pickDate == freezed
          ? _value.pickDate
          : pickDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pickTime: pickTime == freezed
          ? _value.pickTime
          : pickTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      servicePrice: servicePrice == freezed
          ? _value.servicePrice
          : servicePrice // ignore: cast_nullable_to_non_nullable
              as double,
      userID: userID == freezed
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$AppointmentModelCopyWith<$Res>
    implements $AppointmentModelCopyWith<$Res> {
  factory _$AppointmentModelCopyWith(
          _AppointmentModel value, $Res Function(_AppointmentModel) then) =
      __$AppointmentModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int vehicleID,
      String serviceID,
      DateTime pickDate,
      DateTime pickTime,
      double servicePrice,
      int userID});
}

/// @nodoc
class __$AppointmentModelCopyWithImpl<$Res>
    extends _$AppointmentModelCopyWithImpl<$Res>
    implements _$AppointmentModelCopyWith<$Res> {
  __$AppointmentModelCopyWithImpl(
      _AppointmentModel _value, $Res Function(_AppointmentModel) _then)
      : super(_value, (v) => _then(v as _AppointmentModel));

  @override
  _AppointmentModel get _value => super._value as _AppointmentModel;

  @override
  $Res call({
    Object? vehicleID = freezed,
    Object? serviceID = freezed,
    Object? pickDate = freezed,
    Object? pickTime = freezed,
    Object? servicePrice = freezed,
    Object? userID = freezed,
  }) {
    return _then(_AppointmentModel(
      vehicleID: vehicleID == freezed
          ? _value.vehicleID
          : vehicleID // ignore: cast_nullable_to_non_nullable
              as int,
      serviceID: serviceID == freezed
          ? _value.serviceID
          : serviceID // ignore: cast_nullable_to_non_nullable
              as String,
      pickDate: pickDate == freezed
          ? _value.pickDate
          : pickDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pickTime: pickTime == freezed
          ? _value.pickTime
          : pickTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      servicePrice: servicePrice == freezed
          ? _value.servicePrice
          : servicePrice // ignore: cast_nullable_to_non_nullable
              as double,
      userID: userID == freezed
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppointmentModel implements _AppointmentModel {
  const _$_AppointmentModel(
      {required this.vehicleID,
      required this.serviceID,
      required this.pickDate,
      required this.pickTime,
      required this.servicePrice,
      required this.userID});

  factory _$_AppointmentModel.fromJson(Map<String, dynamic> json) =>
      _$$_AppointmentModelFromJson(json);

  @override
  final int vehicleID;
  @override
  final String serviceID;
  @override
  final DateTime pickDate;
  @override
  final DateTime pickTime;
  @override
  final double servicePrice;
  @override
  final int userID;

  @override
  String toString() {
    return 'AppointmentModel(vehicleID: $vehicleID, serviceID: $serviceID, pickDate: $pickDate, pickTime: $pickTime, servicePrice: $servicePrice, userID: $userID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppointmentModel &&
            const DeepCollectionEquality().equals(other.vehicleID, vehicleID) &&
            const DeepCollectionEquality().equals(other.serviceID, serviceID) &&
            const DeepCollectionEquality().equals(other.pickDate, pickDate) &&
            const DeepCollectionEquality().equals(other.pickTime, pickTime) &&
            const DeepCollectionEquality()
                .equals(other.servicePrice, servicePrice) &&
            const DeepCollectionEquality().equals(other.userID, userID));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(vehicleID),
      const DeepCollectionEquality().hash(serviceID),
      const DeepCollectionEquality().hash(pickDate),
      const DeepCollectionEquality().hash(pickTime),
      const DeepCollectionEquality().hash(servicePrice),
      const DeepCollectionEquality().hash(userID));

  @JsonKey(ignore: true)
  @override
  _$AppointmentModelCopyWith<_AppointmentModel> get copyWith =>
      __$AppointmentModelCopyWithImpl<_AppointmentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppointmentModelToJson(this);
  }
}

abstract class _AppointmentModel implements AppointmentModel {
  const factory _AppointmentModel(
      {required int vehicleID,
      required String serviceID,
      required DateTime pickDate,
      required DateTime pickTime,
      required double servicePrice,
      required int userID}) = _$_AppointmentModel;

  factory _AppointmentModel.fromJson(Map<String, dynamic> json) =
      _$_AppointmentModel.fromJson;

  @override
  int get vehicleID;
  @override
  String get serviceID;
  @override
  DateTime get pickDate;
  @override
  DateTime get pickTime;
  @override
  double get servicePrice;
  @override
  int get userID;
  @override
  @JsonKey(ignore: true)
  _$AppointmentModelCopyWith<_AppointmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AppointmentDataModel _$AppointmentDataModelFromJson(Map<String, dynamic> json) {
  return _AppointmentDataModel.fromJson(json);
}

/// @nodoc
class _$AppointmentDataModelTearOff {
  const _$AppointmentDataModelTearOff();

  _AppointmentDataModel call(
      {required int appID,
      required int vehicleID,
      required String userID,
      required DateTime date,
      required DateTime time,
      required String status,
      String? feedbackID,
      @JsonKey(name: "service_ID") required String serviceID,
      required String price}) {
    return _AppointmentDataModel(
      appID: appID,
      vehicleID: vehicleID,
      userID: userID,
      date: date,
      time: time,
      status: status,
      feedbackID: feedbackID,
      serviceID: serviceID,
      price: price,
    );
  }

  AppointmentDataModel fromJson(Map<String, Object?> json) {
    return AppointmentDataModel.fromJson(json);
  }
}

/// @nodoc
const $AppointmentDataModel = _$AppointmentDataModelTearOff();

/// @nodoc
mixin _$AppointmentDataModel {
  int get appID => throw _privateConstructorUsedError;
  int get vehicleID => throw _privateConstructorUsedError;
  String get userID => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get feedbackID => throw _privateConstructorUsedError;
  @JsonKey(name: "service_ID")
  String get serviceID => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentDataModelCopyWith<AppointmentDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentDataModelCopyWith<$Res> {
  factory $AppointmentDataModelCopyWith(AppointmentDataModel value,
          $Res Function(AppointmentDataModel) then) =
      _$AppointmentDataModelCopyWithImpl<$Res>;
  $Res call(
      {int appID,
      int vehicleID,
      String userID,
      DateTime date,
      DateTime time,
      String status,
      String? feedbackID,
      @JsonKey(name: "service_ID") String serviceID,
      String price});
}

/// @nodoc
class _$AppointmentDataModelCopyWithImpl<$Res>
    implements $AppointmentDataModelCopyWith<$Res> {
  _$AppointmentDataModelCopyWithImpl(this._value, this._then);

  final AppointmentDataModel _value;
  // ignore: unused_field
  final $Res Function(AppointmentDataModel) _then;

  @override
  $Res call({
    Object? appID = freezed,
    Object? vehicleID = freezed,
    Object? userID = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? status = freezed,
    Object? feedbackID = freezed,
    Object? serviceID = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      appID: appID == freezed
          ? _value.appID
          : appID // ignore: cast_nullable_to_non_nullable
              as int,
      vehicleID: vehicleID == freezed
          ? _value.vehicleID
          : vehicleID // ignore: cast_nullable_to_non_nullable
              as int,
      userID: userID == freezed
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      feedbackID: feedbackID == freezed
          ? _value.feedbackID
          : feedbackID // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceID: serviceID == freezed
          ? _value.serviceID
          : serviceID // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AppointmentDataModelCopyWith<$Res>
    implements $AppointmentDataModelCopyWith<$Res> {
  factory _$AppointmentDataModelCopyWith(_AppointmentDataModel value,
          $Res Function(_AppointmentDataModel) then) =
      __$AppointmentDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int appID,
      int vehicleID,
      String userID,
      DateTime date,
      DateTime time,
      String status,
      String? feedbackID,
      @JsonKey(name: "service_ID") String serviceID,
      String price});
}

/// @nodoc
class __$AppointmentDataModelCopyWithImpl<$Res>
    extends _$AppointmentDataModelCopyWithImpl<$Res>
    implements _$AppointmentDataModelCopyWith<$Res> {
  __$AppointmentDataModelCopyWithImpl(
      _AppointmentDataModel _value, $Res Function(_AppointmentDataModel) _then)
      : super(_value, (v) => _then(v as _AppointmentDataModel));

  @override
  _AppointmentDataModel get _value => super._value as _AppointmentDataModel;

  @override
  $Res call({
    Object? appID = freezed,
    Object? vehicleID = freezed,
    Object? userID = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? status = freezed,
    Object? feedbackID = freezed,
    Object? serviceID = freezed,
    Object? price = freezed,
  }) {
    return _then(_AppointmentDataModel(
      appID: appID == freezed
          ? _value.appID
          : appID // ignore: cast_nullable_to_non_nullable
              as int,
      vehicleID: vehicleID == freezed
          ? _value.vehicleID
          : vehicleID // ignore: cast_nullable_to_non_nullable
              as int,
      userID: userID == freezed
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      feedbackID: feedbackID == freezed
          ? _value.feedbackID
          : feedbackID // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceID: serviceID == freezed
          ? _value.serviceID
          : serviceID // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppointmentDataModel implements _AppointmentDataModel {
  const _$_AppointmentDataModel(
      {required this.appID,
      required this.vehicleID,
      required this.userID,
      required this.date,
      required this.time,
      required this.status,
      this.feedbackID,
      @JsonKey(name: "service_ID") required this.serviceID,
      required this.price});

  factory _$_AppointmentDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_AppointmentDataModelFromJson(json);

  @override
  final int appID;
  @override
  final int vehicleID;
  @override
  final String userID;
  @override
  final DateTime date;
  @override
  final DateTime time;
  @override
  final String status;
  @override
  final String? feedbackID;
  @override
  @JsonKey(name: "service_ID")
  final String serviceID;
  @override
  final String price;

  @override
  String toString() {
    return 'AppointmentDataModel(appID: $appID, vehicleID: $vehicleID, userID: $userID, date: $date, time: $time, status: $status, feedbackID: $feedbackID, serviceID: $serviceID, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppointmentDataModel &&
            const DeepCollectionEquality().equals(other.appID, appID) &&
            const DeepCollectionEquality().equals(other.vehicleID, vehicleID) &&
            const DeepCollectionEquality().equals(other.userID, userID) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.feedbackID, feedbackID) &&
            const DeepCollectionEquality().equals(other.serviceID, serviceID) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(appID),
      const DeepCollectionEquality().hash(vehicleID),
      const DeepCollectionEquality().hash(userID),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(feedbackID),
      const DeepCollectionEquality().hash(serviceID),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$AppointmentDataModelCopyWith<_AppointmentDataModel> get copyWith =>
      __$AppointmentDataModelCopyWithImpl<_AppointmentDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppointmentDataModelToJson(this);
  }
}

abstract class _AppointmentDataModel implements AppointmentDataModel {
  const factory _AppointmentDataModel(
      {required int appID,
      required int vehicleID,
      required String userID,
      required DateTime date,
      required DateTime time,
      required String status,
      String? feedbackID,
      @JsonKey(name: "service_ID") required String serviceID,
      required String price}) = _$_AppointmentDataModel;

  factory _AppointmentDataModel.fromJson(Map<String, dynamic> json) =
      _$_AppointmentDataModel.fromJson;

  @override
  int get appID;
  @override
  int get vehicleID;
  @override
  String get userID;
  @override
  DateTime get date;
  @override
  DateTime get time;
  @override
  String get status;
  @override
  String? get feedbackID;
  @override
  @JsonKey(name: "service_ID")
  String get serviceID;
  @override
  String get price;
  @override
  @JsonKey(ignore: true)
  _$AppointmentDataModelCopyWith<_AppointmentDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
