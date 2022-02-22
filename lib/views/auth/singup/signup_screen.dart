import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:vehicle_app/utils/colors.dart';
import 'package:vehicle_app/utils/common_methods.dart';
import 'package:vehicle_app/utils/constants.dart';
import 'package:vehicle_app/views/_shared/widget/formbuilder_textfield_widget.dart';
import 'package:vehicle_app/views/auth/singup/signup_controller.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final SignUpController _signupController = Get.put(SignUpController());
  @override
  void dispose() {
    Get.delete<SignUpController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("SIGN UP"),
        ),
        resizeToAvoidBottomInset: true,
        backgroundColor: kBgColor,
        body: Obx(
          () => _signupController.isSigning.value
              ? CommonMethods.getDefaultLoader
              : SingleChildScrollView(
                  child: FormBuilder(
                    key: _signupController.formKey.value,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      children: [
                        FormBuilderTextFieldWidget(
                          name: 'firstName',
                          labelText: "First Name",
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(context),
                          ]),
                        ),
                        FormBuilderTextFieldWidget(
                          name: 'lastName',
                          labelText: "Last Name",
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(context),
                          ]),
                        ),
                        FormBuilderTextFieldWidget(
                          name: 'email',
                          labelText: "Email",
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.email(context),
                          ]),
                        ),
                        FormBuilderTextFieldWidget(
                          enabled:
                              !_signupController.isPhoneNumberVerified.value,
                          name: 'contact',
                          labelText: "Mobile No",
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(context),
                          ]),
                        ),
                        FormBuilderTextFieldWidget(
                          name: 'nic',
                          labelText: "NIC Number",
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(context),
                          ]),
                        ),
                        FormBuilderTextFieldWidget(
                          name: 'password',
                          labelText: "Password",
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(context),
                          ]),
                          obscureText: true,
                          suffixObsecureActiveIcon:
                              const Icon(FontAwesomeIcons.eye),
                          suffixObsecureDisableIcon:
                              const Icon(FontAwesomeIcons.eyeSlash),
                        ),
                        FormBuilderTextFieldWidget(
                          name: 'confirm_password',
                          labelText: "Confirm Password",
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(context),
                            (val) {
                              if (val !=
                                  _signupController.formKey.value.currentState
                                      ?.fields['password']?.value) {
                                return 'Passwords do not match';
                              }
                              return null;
                            }
                          ]),
                          obscureText: true,
                          suffixObsecureActiveIcon:
                              const Icon(FontAwesomeIcons.eye),
                          suffixObsecureDisableIcon:
                              const Icon(FontAwesomeIcons.eyeSlash),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: defaultPaddingX2, bottom: defaultPaddingX2),
                          child: Row(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: kButtonBgColor),
                                onPressed: () async =>
                                    await _signupController.onRegister(context),
                                child: Row(
                                  children: const [
                                    Text("REGISTER"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(FontAwesomeIcons.signOutAlt)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
