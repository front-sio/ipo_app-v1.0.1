import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';
import 'package:ipo_app/presentation/splash_screen/models/splash_model.dart';

/// A provider class for the SplashScreen.
///
/// This provider manages the state of the SplashScreen, including the
/// current splashModelObj
class SplashProvider extends ChangeNotifier {
  SplashModel splashModelObj = SplashModel();

  @override
  void dispose() {
    super.dispose();
  }
}
