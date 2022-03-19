import 'package:freezed_annotation/freezed_annotation.dart';
part 'users_and_auth_model.freezed.dart';
part 'users_and_auth_model.g.dart';

@freezed
class UsersAndAuthModel with _$UsersAndAuthModel {
  factory UsersAndAuthModel.registerUser({
    required String firstName,
    required String lastName,
    required String email,
    required String nic,
    required String contact,
    required String password,
  }) = RegisterUser;
  factory UsersAndAuthModel.loginUser({
    required String email,
    required String password,
  }) = LoginUser;

  factory UsersAndAuthModel.loginAuthToken({
    String? token,
    int? userId,
  }) = LoginAuthToken;
  factory UsersAndAuthModel.fromJson(Map<String, dynamic> json) =>
      _$UsersAndAuthModelFromJson(json);
}
