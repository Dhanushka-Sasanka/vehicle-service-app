// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'users_and_auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UsersAndAuthModel _$UsersAndAuthModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'registerUser':
      return RegisterUser.fromJson(json);
    case 'loginUser':
      return LoginUser.fromJson(json);
    case 'loginAuthToken':
      return LoginAuthToken.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UsersAndAuthModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$UsersAndAuthModelTearOff {
  const _$UsersAndAuthModelTearOff();

  RegisterUser registerUser(
      {required String firstName,
      required String lastName,
      required String email,
      required String nic,
      required String contact,
      required String password}) {
    return RegisterUser(
      firstName: firstName,
      lastName: lastName,
      email: email,
      nic: nic,
      contact: contact,
      password: password,
    );
  }

  LoginUser loginUser({required String email, required String password}) {
    return LoginUser(
      email: email,
      password: password,
    );
  }

  LoginAuthToken loginAuthToken({String? token, int? userId}) {
    return LoginAuthToken(
      token: token,
      userId: userId,
    );
  }

  UsersAndAuthModel fromJson(Map<String, Object?> json) {
    return UsersAndAuthModel.fromJson(json);
  }
}

/// @nodoc
const $UsersAndAuthModel = _$UsersAndAuthModelTearOff();

/// @nodoc
mixin _$UsersAndAuthModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName, String lastName, String email,
            String nic, String contact, String password)
        registerUser,
    required TResult Function(String email, String password) loginUser,
    required TResult Function(String? token, int? userId) loginAuthToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String email,
            String nic, String contact, String password)?
        registerUser,
    TResult Function(String email, String password)? loginUser,
    TResult Function(String? token, int? userId)? loginAuthToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String email,
            String nic, String contact, String password)?
        registerUser,
    TResult Function(String email, String password)? loginUser,
    TResult Function(String? token, int? userId)? loginAuthToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(LoginUser value) loginUser,
    required TResult Function(LoginAuthToken value) loginAuthToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(LoginUser value)? loginUser,
    TResult Function(LoginAuthToken value)? loginAuthToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(LoginUser value)? loginUser,
    TResult Function(LoginAuthToken value)? loginAuthToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersAndAuthModelCopyWith<$Res> {
  factory $UsersAndAuthModelCopyWith(
          UsersAndAuthModel value, $Res Function(UsersAndAuthModel) then) =
      _$UsersAndAuthModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsersAndAuthModelCopyWithImpl<$Res>
    implements $UsersAndAuthModelCopyWith<$Res> {
  _$UsersAndAuthModelCopyWithImpl(this._value, this._then);

  final UsersAndAuthModel _value;
  // ignore: unused_field
  final $Res Function(UsersAndAuthModel) _then;
}

/// @nodoc
abstract class $RegisterUserCopyWith<$Res> {
  factory $RegisterUserCopyWith(
          RegisterUser value, $Res Function(RegisterUser) then) =
      _$RegisterUserCopyWithImpl<$Res>;
  $Res call(
      {String firstName,
      String lastName,
      String email,
      String nic,
      String contact,
      String password});
}

/// @nodoc
class _$RegisterUserCopyWithImpl<$Res>
    extends _$UsersAndAuthModelCopyWithImpl<$Res>
    implements $RegisterUserCopyWith<$Res> {
  _$RegisterUserCopyWithImpl(
      RegisterUser _value, $Res Function(RegisterUser) _then)
      : super(_value, (v) => _then(v as RegisterUser));

  @override
  RegisterUser get _value => super._value as RegisterUser;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? nic = freezed,
    Object? contact = freezed,
    Object? password = freezed,
  }) {
    return _then(RegisterUser(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      nic: nic == freezed
          ? _value.nic
          : nic // ignore: cast_nullable_to_non_nullable
              as String,
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterUser implements RegisterUser {
  _$RegisterUser(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.nic,
      required this.contact,
      required this.password,
      String? $type})
      : $type = $type ?? 'registerUser';

  factory _$RegisterUser.fromJson(Map<String, dynamic> json) =>
      _$$RegisterUserFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String nic;
  @override
  final String contact;
  @override
  final String password;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UsersAndAuthModel.registerUser(firstName: $firstName, lastName: $lastName, email: $email, nic: $nic, contact: $contact, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterUser &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.nic, nic) &&
            const DeepCollectionEquality().equals(other.contact, contact) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(nic),
      const DeepCollectionEquality().hash(contact),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $RegisterUserCopyWith<RegisterUser> get copyWith =>
      _$RegisterUserCopyWithImpl<RegisterUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName, String lastName, String email,
            String nic, String contact, String password)
        registerUser,
    required TResult Function(String email, String password) loginUser,
    required TResult Function(String? token, int? userId) loginAuthToken,
  }) {
    return registerUser(firstName, lastName, email, nic, contact, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String email,
            String nic, String contact, String password)?
        registerUser,
    TResult Function(String email, String password)? loginUser,
    TResult Function(String? token, int? userId)? loginAuthToken,
  }) {
    return registerUser?.call(
        firstName, lastName, email, nic, contact, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String email,
            String nic, String contact, String password)?
        registerUser,
    TResult Function(String email, String password)? loginUser,
    TResult Function(String? token, int? userId)? loginAuthToken,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(firstName, lastName, email, nic, contact, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(LoginUser value) loginUser,
    required TResult Function(LoginAuthToken value) loginAuthToken,
  }) {
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(LoginUser value)? loginUser,
    TResult Function(LoginAuthToken value)? loginAuthToken,
  }) {
    return registerUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(LoginUser value)? loginUser,
    TResult Function(LoginAuthToken value)? loginAuthToken,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterUserToJson(this);
  }
}

abstract class RegisterUser implements UsersAndAuthModel {
  factory RegisterUser(
      {required String firstName,
      required String lastName,
      required String email,
      required String nic,
      required String contact,
      required String password}) = _$RegisterUser;

  factory RegisterUser.fromJson(Map<String, dynamic> json) =
      _$RegisterUser.fromJson;

  String get firstName;
  String get lastName;
  String get email;
  String get nic;
  String get contact;
  String get password;
  @JsonKey(ignore: true)
  $RegisterUserCopyWith<RegisterUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUserCopyWith<$Res> {
  factory $LoginUserCopyWith(LoginUser value, $Res Function(LoginUser) then) =
      _$LoginUserCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginUserCopyWithImpl<$Res>
    extends _$UsersAndAuthModelCopyWithImpl<$Res>
    implements $LoginUserCopyWith<$Res> {
  _$LoginUserCopyWithImpl(LoginUser _value, $Res Function(LoginUser) _then)
      : super(_value, (v) => _then(v as LoginUser));

  @override
  LoginUser get _value => super._value as LoginUser;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(LoginUser(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginUser implements LoginUser {
  _$LoginUser({required this.email, required this.password, String? $type})
      : $type = $type ?? 'loginUser';

  factory _$LoginUser.fromJson(Map<String, dynamic> json) =>
      _$$LoginUserFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UsersAndAuthModel.loginUser(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginUser &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $LoginUserCopyWith<LoginUser> get copyWith =>
      _$LoginUserCopyWithImpl<LoginUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName, String lastName, String email,
            String nic, String contact, String password)
        registerUser,
    required TResult Function(String email, String password) loginUser,
    required TResult Function(String? token, int? userId) loginAuthToken,
  }) {
    return loginUser(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String email,
            String nic, String contact, String password)?
        registerUser,
    TResult Function(String email, String password)? loginUser,
    TResult Function(String? token, int? userId)? loginAuthToken,
  }) {
    return loginUser?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String email,
            String nic, String contact, String password)?
        registerUser,
    TResult Function(String email, String password)? loginUser,
    TResult Function(String? token, int? userId)? loginAuthToken,
    required TResult orElse(),
  }) {
    if (loginUser != null) {
      return loginUser(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(LoginUser value) loginUser,
    required TResult Function(LoginAuthToken value) loginAuthToken,
  }) {
    return loginUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(LoginUser value)? loginUser,
    TResult Function(LoginAuthToken value)? loginAuthToken,
  }) {
    return loginUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(LoginUser value)? loginUser,
    TResult Function(LoginAuthToken value)? loginAuthToken,
    required TResult orElse(),
  }) {
    if (loginUser != null) {
      return loginUser(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginUserToJson(this);
  }
}

abstract class LoginUser implements UsersAndAuthModel {
  factory LoginUser({required String email, required String password}) =
      _$LoginUser;

  factory LoginUser.fromJson(Map<String, dynamic> json) = _$LoginUser.fromJson;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  $LoginUserCopyWith<LoginUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginAuthTokenCopyWith<$Res> {
  factory $LoginAuthTokenCopyWith(
          LoginAuthToken value, $Res Function(LoginAuthToken) then) =
      _$LoginAuthTokenCopyWithImpl<$Res>;
  $Res call({String? token, int? userId});
}

/// @nodoc
class _$LoginAuthTokenCopyWithImpl<$Res>
    extends _$UsersAndAuthModelCopyWithImpl<$Res>
    implements $LoginAuthTokenCopyWith<$Res> {
  _$LoginAuthTokenCopyWithImpl(
      LoginAuthToken _value, $Res Function(LoginAuthToken) _then)
      : super(_value, (v) => _then(v as LoginAuthToken));

  @override
  LoginAuthToken get _value => super._value as LoginAuthToken;

  @override
  $Res call({
    Object? token = freezed,
    Object? userId = freezed,
  }) {
    return _then(LoginAuthToken(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginAuthToken implements LoginAuthToken {
  _$LoginAuthToken({this.token, this.userId, String? $type})
      : $type = $type ?? 'loginAuthToken';

  factory _$LoginAuthToken.fromJson(Map<String, dynamic> json) =>
      _$$LoginAuthTokenFromJson(json);

  @override
  final String? token;
  @override
  final int? userId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UsersAndAuthModel.loginAuthToken(token: $token, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginAuthToken &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  $LoginAuthTokenCopyWith<LoginAuthToken> get copyWith =>
      _$LoginAuthTokenCopyWithImpl<LoginAuthToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName, String lastName, String email,
            String nic, String contact, String password)
        registerUser,
    required TResult Function(String email, String password) loginUser,
    required TResult Function(String? token, int? userId) loginAuthToken,
  }) {
    return loginAuthToken(token, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String email,
            String nic, String contact, String password)?
        registerUser,
    TResult Function(String email, String password)? loginUser,
    TResult Function(String? token, int? userId)? loginAuthToken,
  }) {
    return loginAuthToken?.call(token, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String email,
            String nic, String contact, String password)?
        registerUser,
    TResult Function(String email, String password)? loginUser,
    TResult Function(String? token, int? userId)? loginAuthToken,
    required TResult orElse(),
  }) {
    if (loginAuthToken != null) {
      return loginAuthToken(token, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(LoginUser value) loginUser,
    required TResult Function(LoginAuthToken value) loginAuthToken,
  }) {
    return loginAuthToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(LoginUser value)? loginUser,
    TResult Function(LoginAuthToken value)? loginAuthToken,
  }) {
    return loginAuthToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(LoginUser value)? loginUser,
    TResult Function(LoginAuthToken value)? loginAuthToken,
    required TResult orElse(),
  }) {
    if (loginAuthToken != null) {
      return loginAuthToken(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginAuthTokenToJson(this);
  }
}

abstract class LoginAuthToken implements UsersAndAuthModel {
  factory LoginAuthToken({String? token, int? userId}) = _$LoginAuthToken;

  factory LoginAuthToken.fromJson(Map<String, dynamic> json) =
      _$LoginAuthToken.fromJson;

  String? get token;
  int? get userId;
  @JsonKey(ignore: true)
  $LoginAuthTokenCopyWith<LoginAuthToken> get copyWith =>
      throw _privateConstructorUsedError;
}
