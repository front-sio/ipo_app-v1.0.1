import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';
import 'package:ipo_app/presentation/login_otp_screen/models/login_otp_model.dart';

/// A provider class for the LoginOtpScreen.
///
/// This provider manages the state of the LoginOtpScreen, including the
/// current loginOtpModelObj

// ignore_for_file: must_be_immutable
class LoginOtpProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  LoginOtpModel loginOtpModelObj = LoginOtpModel();

  @override
  void dispose() {
    super.dispose();
  }
}
