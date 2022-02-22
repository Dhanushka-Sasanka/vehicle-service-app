import 'package:vehicle_app/config/config_handler.dart';
import 'package:vehicle_app/config/model/api_config.dart';
import 'package:vehicle_app/models/users/users_and_auth_model.dart';
import 'package:vehicle_app/services/auth/token_manager.dart';

class AuthService extends TokenManager {
  final UserApis? _userApiConfigHandler =
      ConfigHandler.loadAPIConfigs()?.userApis;

  // Future register(RegisterUser registerUser) async {
  //   try {
  //     var response = await dio.post(_userApiConfigHandler!.registerUser,
  //         data: registerUser.toJson());

  //     if (response.data?.containsKey("token")) {
  //       LoginAuthToken loginAuthToken = LoginAuthToken.fromJson(response.data);
  //       saveTokens(loginAuthToken);
  //       return true;
  //     }
  //     return false;
  //   } catch (e) {
  //     print(e);
  //     return false;
  //   }
  // }

  Future<bool> login(LoginUser loginUser) async {
    try {
      // var response = await dio.post(_userApiConfigHandler!.loginUser,
      //     data: loginUser.toJson());

      // if (response.data?.containsKey("token")) {
      //   LoginAuthToken loginAuthToken = LoginAuthToken.fromJson(response.data);
      //   saveTokens(loginAuthToken);
      //   return true;
      // }
      // return false;
      saveTokens(LoginAuthToken(token: "logged"));
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
