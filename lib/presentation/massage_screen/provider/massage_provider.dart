import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';
import 'package:ipo_app/presentation/massage_screen/models/massage_model.dart';

/// A provider class for the MassageScreen.
///
/// This provider manages the state of the MassageScreen, including the
/// current massageModelObj
class MassageProvider extends ChangeNotifier {
  TextEditingController messageController = TextEditingController();

  MassageModel massageModelObj = MassageModel();

  @override
  void dispose() {
    super.dispose();
    messageController.dispose();
  }
}
