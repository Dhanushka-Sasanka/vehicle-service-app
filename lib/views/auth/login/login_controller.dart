import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:vehicle_app/models/users/users_and_auth_model.dart';
import 'package:vehicle_app/routes/app_router.gr.dart';
import 'package:vehicle_app/services/auth/auth_service.dart';

class LoginController extends GetxController {
  final _authService = Get.find<AuthService>();
  var isLogging = false.obs;
  var isPasswordVisible = false.obs;
  var accountSelectionIndex = 0.obs;
  final formKey = GlobalKey<FormBuilderState>().obs;

  Future login(BuildContext context) async {
    // AutoRouter.of(context).replace(const HomeBase());
    if (formKey.value.currentState!.saveAndValidate()) {
      if (kDebugMode) {
        print(formKey.value.currentState!.value);
      }
      isLogging.value = true;
      bool isLogged = await _authService.login(UsersAndAuthModel.loginUser(
              email: formKey.value.currentState!.value["email"],
              password: formKey.value.currentState!.value["password"])
          as LoginUser);
      isLogging.value = false;
      if (isLogged) {
        AutoRouter.of(context).replace(const HomeBase());
      }
    }
  }

  goToSignUpPage(BuildContext context) {
    AutoRouter.of(context).push(const SignUpRoute());
  }
}
