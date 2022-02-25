import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:vehicle_app/models/users/users_and_auth_model.dart';
import 'package:vehicle_app/services/auth/auth_service.dart';

class SignUpController extends GetxController {
  final _authService = Get.find<AuthService>();
  var isSigning = false.obs;
  var isVerifyOTPEnabled = false.obs;
  var isPhoneNumberVerified = false.obs;
  var optCode = ''.obs;
  final formKey = GlobalKey<FormBuilderState>().obs;

  Future onRegister(BuildContext context) async {
    // if (formKey.value.currentState!.saveAndValidate()) {
    isSigning.value = true;
    // RegisterUser registerUser =
    //     RegisterUser.fromJson(formKey.value.currentState!.value);
    // bool isLogged = await _authService.register(registerUser);
    bool isLogged = await _authService.register(null);
    isSigning.value = false;
    // if (isLogged) {
    //   AutoRouter.of(context).replace(HomeBase());
    // }
    // }
  }
}
