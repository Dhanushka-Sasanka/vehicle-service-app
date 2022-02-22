import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:vehicle_app/utils/colors.dart';
import 'package:vehicle_app/utils/constants.dart';

class FormBuilderTextFieldWidget extends StatefulWidget {
  final String? labelText;
  final String? hintText;
  final TextStyle? hintStyle;
  final String name;
  final String? initialValue;
  final String? Function(String?)? validator;
  final void Function(String?)? onChanged;
  final bool obscureText;
  final bool enabled;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget? suffixObsecureActiveIcon;
  final Widget? suffixObsecureDisableIcon;
  final InputDecoration? decoration;
  final TextInputType? keyboardType;
  const FormBuilderTextFieldWidget(
      {Key? key,
      this.labelText,
      required this.name,
      this.hintText,
      this.hintStyle,
      this.validator,
      this.obscureText = false,
      this.enabled = true,
      this.prefixIcon,
      this.suffixIcon,
      this.decoration,
      this.suffixObsecureActiveIcon,
      this.suffixObsecureDisableIcon,
      this.onChanged,
      this.initialValue,
      this.keyboardType})
      : super(key: key);

  @override
  _FormBuilderTextFieldWidgetState createState() =>
      _FormBuilderTextFieldWidgetState();
}

class _FormBuilderTextFieldWidgetState
    extends State<FormBuilderTextFieldWidget> {
  bool obscureText = false;
  bool hasFocus = false;
  @override
  void initState() {
    obscureText = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPaddingX2, vertical: defaultPadding),
      child: FormBuilderTextField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        initialValue: widget.initialValue,
        onChanged: widget.onChanged,
        name: widget.name,
        enabled: widget.enabled,
        cursorColor: kPrimaryColor,
        decoration: widget.decoration ??
            InputDecoration(
              labelText: widget.labelText,
              hintText: widget.hintText,
              hintStyle: widget.hintStyle,
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.obscureText
                  ? (widget.suffixObsecureActiveIcon != null &&
                          widget.suffixObsecureDisableIcon != null
                      ? GestureDetector(
                          child: obscureText
                              ? widget.suffixObsecureDisableIcon
                              : widget.suffixObsecureActiveIcon,
                          onTap: () => setState(() {
                            obscureText = !obscureText;
                          }),
                        )
                      : widget.suffixIcon)
                  : widget.suffixIcon,
            ),
        validator: widget.validator,
        obscureText: obscureText,
        keyboardType: widget.keyboardType,
      ),
    );
  }
}
