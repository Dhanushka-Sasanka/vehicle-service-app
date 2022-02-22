import 'package:get_storage/get_storage.dart';
import 'package:vehicle_app/models/users/users_and_auth_model.dart';

import '../base_service.dart';

class TokenManager extends BaseService {
  Future<bool> saveTokens(LoginAuthToken loginAuthToken) async {
    GetStorage box = GetStorage();
    await box.write(
        TokenMangerKeys.accessToken.toString(), loginAuthToken.token);
    return true;
  }

  String? getAccessToken() {
    GetStorage box = GetStorage();
    return box.read(TokenMangerKeys.accessToken.toString());
  }

  Future<void> removeTokens() async {
    GetStorage box = GetStorage();
    await box.remove(TokenMangerKeys.accessToken.toString());
  }
}

enum TokenMangerKeys { accessToken }
