import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:vehicle_app/utils/colors.dart';
import 'package:vehicle_app/utils/common_methods.dart';
import 'package:vehicle_app/utils/constants.dart';
import 'package:vehicle_app/utils/styles.dart';
import 'package:vehicle_app/views/_shared/widget/formbuilder_textfield_widget.dart';
import 'login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController _loginController = Get.put(LoginController());
  @override
  void dispose() {
    Get.delete<LoginController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("LOGIN"),
          ),
          resizeToAvoidBottomInset: true,
          backgroundColor: kBgColor,
          body: Obx(() => _loginController.isLogging.value
              ? CommonMethods.getDefaultLoader
              : Column(
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.center,
                        child: Icon(
                          FontAwesomeIcons.user,
                          size: 70,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: FormBuilder(
                        key: _loginController.formKey.value,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                          children: [
                            FormBuilderTextFieldWidget(
                              // initialValue: "abc@gmail.com",
                              name: 'email',
                              labelText: "Email",
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(context),
                              ]),
                            ),
                            FormBuilderTextFieldWidget(
                              // initialValue: "123",
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
                            SizedBox(height: size.height * 0.05),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: defaultPaddingX2),
                                child: Text.rich(TextSpan(children: [
                                  TextSpan(
                                      text: "Don't Have An Account ? ",
                                      style: kNormalTextMd),
                                  WidgetSpan(
                                    child: GestureDetector(
                                      onTap: () {
                                        _loginController
                                            .goToSignUpPage(context);
                                      },
                                      child: Text(
                                        "Sign up here",
                                        style: kLinkTextMd,
                                      ),
                                    ),
                                  )
                                ])),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: defaultPaddingX2,
                                  bottom: defaultPaddingX2),
                              child: Row(
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: kButtonBgColor),
                                    onPressed: () async =>
                                        await _loginController.login(context),
                                    child: Row(
                                      children: const [
                                        Text("SIGN IN"),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(FontAwesomeIcons.signOutAlt)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ))),
    );
  }
}
