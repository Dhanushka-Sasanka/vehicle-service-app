import 'package:get_storage/get_storage.dart';
import 'package:vehicle_app/models/users/users_and_auth_model.dart';

import '../base_service.dart';

class TokenManager extends BaseService {
  Future<bool> saveTokens(LoginAuthToken loginAuthToken) async {
    GetStorage box = GetStorage();
    await box.write(
        TokenMangerKeys.accessToken.toString(), loginAuthToken.token);
    await box.write(TokenMangerKeys.userId.toString(), loginAuthToken.userId);
    return true;
  }

  LoginAuthToken getAccessToken() {
    GetStorage box = GetStorage();
    return LoginAuthToken(
        token: box.read(TokenMangerKeys.accessToken.toString()),
        userId: box.read(TokenMangerKeys.userId.toString()));
  }

  Future<void> removeTokens() async {
    GetStorage box = GetStorage();
    await box.remove(TokenMangerKeys.accessToken.toString());
    await box.remove(TokenMangerKeys.userId.toString());
  }
}

enum TokenMangerKeys { accessToken, userId }
