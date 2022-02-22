import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  // final _authService = Get.find<AuthService>();
  var isSigning = false.obs;
  var isVerifyOTPEnabled = false.obs;
  var isPhoneNumberVerified = false.obs;
  var optCode = ''.obs;
  final formKey = GlobalKey<FormBuilderState>().obs;

  Future onRegister(BuildContext context) async {
    if (formKey.value.currentState!.saveAndValidate()) {
      isSigning.value = true;
      // RegisterUser registerUser = RegisterUser(
      //     firstName: formKey.value.currentState!.value["mobile_number"],
      //     lastName: formKey.value.currentState!.value["mobile_number"],
      //     email: formKey.value.currentState!.value["mobile_number"],
      //     nic: formKey.value.currentState!.value["mobile_number"],
      //     mobile: formKey.value.currentState!.value["mobile_number"],
      //     password: formKey.value.currentState!.value["mobile_number"]);
      // bool isLogged = await _authService.register(registerUser);
      isSigning.value = false;
      // if (isLogged) {
      //   AutoRouter.of(context).replace(HomeBase());
      // }
    }
  }
}
