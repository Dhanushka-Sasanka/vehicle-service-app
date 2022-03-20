import 'package:flutter/foundation.dart';
import 'package:vehicle_app/config/config_handler.dart';
import 'package:vehicle_app/config/model/api_config.dart';
import 'package:vehicle_app/models/users/users_and_auth_model.dart';
import 'package:vehicle_app/services/auth/token_manager.dart';
import 'package:vehicle_app/utils/constants.dart';

class AuthService extends TokenManager {
  final UserApis? _userApiConfigHandler =
      ConfigHandler.loadAPIConfigs()?.userApis;

  Future<bool> login(LoginUser loginUser) async {
    try {
      // var response = await dio.post(_userApiConfigHandler!.loginUser,
      //     data: FormData.fromMap(loginUser.toJson()));

      saveTokens(LoginAuthToken(token: "logged", userId: userIdDemo));
      return true;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  Future<bool> register(RegisterUser registerUser) async {
    try {
      // await dio.post(_userApiConfigHandler!.registerUser,
      //     data: registerUser.toJson());

      saveTokens(LoginAuthToken(token: "logged", userId: userIdDemo));
      return true;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }
}
