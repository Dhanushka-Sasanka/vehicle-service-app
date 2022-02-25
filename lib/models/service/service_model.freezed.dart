// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServiceModel _$ServiceModelFromJson(Map<String, dynamic> json) {
  return _ServiceModel.fromJson(json);
}

/// @nodoc
class _$ServiceModelTearOff {
  const _$ServiceModelTearOff();

  _ServiceModel call({@JsonKey(name: '_id') String? id}) {
    return _ServiceModel(
      id: id,
    );
  }

  ServiceModel fromJson(Map<String, Object?> json) {
    return ServiceModel.fromJson(json);
  }
}

/// @nodoc
const $ServiceModel = _$ServiceModelTearOff();

/// @nodoc
mixin _$ServiceModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceModelCopyWith<ServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceModelCopyWith<$Res> {
  factory $ServiceModelCopyWith(
          ServiceModel value, $Res Function(ServiceModel) then) =
      _$ServiceModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: '_id') String? id});
}

/// @nodoc
class _$ServiceModelCopyWithImpl<$Res> implements $ServiceModelCopyWith<$Res> {
  _$ServiceModelCopyWithImpl(this._value, this._then);

  final ServiceModel _value;
  // ignore: unused_field
  final $Res Function(ServiceModel) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ServiceModelCopyWith<$Res>
    implements $ServiceModelCopyWith<$Res> {
  factory _$ServiceModelCopyWith(
          _ServiceModel value, $Res Function(_ServiceModel) then) =
      __$ServiceModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: '_id') String? id});
}

/// @nodoc
class __$ServiceModelCopyWithImpl<$Res> extends _$ServiceModelCopyWithImpl<$Res>
    implements _$ServiceModelCopyWith<$Res> {
  __$ServiceModelCopyWithImpl(
      _ServiceModel _value, $Res Function(_ServiceModel) _then)
      : super(_value, (v) => _then(v as _ServiceModel));

  @override
  _ServiceModel get _value => super._value as _ServiceModel;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_ServiceModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServiceModel implements _ServiceModel {
  const _$_ServiceModel({@JsonKey(name: '_id') this.id});

  factory _$_ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceModelFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;

  @override
  String toString() {
    return 'ServiceModel(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServiceModel &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$ServiceModelCopyWith<_ServiceModel> get copyWith =>
      __$ServiceModelCopyWithImpl<_ServiceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceModelToJson(this);
  }
}

abstract class _ServiceModel implements ServiceModel {
  const factory _ServiceModel({@JsonKey(name: '_id') String? id}) =
      _$_ServiceModel;

  factory _ServiceModel.fromJson(Map<String, dynamic> json) =
      _$_ServiceModel.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$ServiceModelCopyWith<_ServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
