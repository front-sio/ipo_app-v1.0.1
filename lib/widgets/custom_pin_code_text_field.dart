import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../core/app_export.dart';

class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField({
    Key? key,
    required this.context,
    required this.onChanged,
    this.alignment,
    this.controller,
    this.textStyle,
    this.hintStyle,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final BuildContext context;

  final TextEditingController? controller;

  final TextStyle? textStyle;

  final TextStyle? hintStyle;

  Function(String) onChanged;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: pinCodeTextFieldWidget,
          )
        : pinCodeTextFieldWidget;
  }

  Widget get pinCodeTextFieldWidget => PinCodeTextField(
        appContext: context,
        controller: controller,
        length: 4,
        keyboardType: TextInputType.number,
        textStyle: textStyle ?? CustomTextStyles.titleLargePrimary,
        hintStyle: hintStyle ?? CustomTextStyles.titleLargePrimary,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        enableActiveFill: true,
        pinTheme: PinTheme(
          fieldHeight: 63.h,
          fieldWidth: 64.h,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(8.h),
          inactiveColor: appTheme.gray60001,
          activeColor: appTheme.gray60001,
          inactiveFillColor: theme.colorScheme.errorContainer,
          activeFillColor: theme.colorScheme.errorContainer,
          selectedColor: Colors.transparent,
        ),
        onChanged: (value) => onChanged(value),
        validator: validator,
      );
}
