import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';
import 'package:ipo_app/presentation/profile_edit_screen/models/profile_edit_model.dart';

/// A provider class for the ProfileEditScreen.
///
/// This provider manages the state of the ProfileEditScreen, including the
/// current profileEditModelObj
class ProfileEditProvider extends ChangeNotifier {
  TextEditingController usernameSectionController = TextEditingController();

  TextEditingController emailSectionController = TextEditingController();

  TextEditingController phoneNumberSectionController = TextEditingController();

  TextEditingController enterNumberNidaSectionController =
      TextEditingController();

  ProfileEditModel profileEditModelObj = ProfileEditModel();

  @override
  void dispose() {
    super.dispose();
    usernameSectionController.dispose();
    emailSectionController.dispose();
    phoneNumberSectionController.dispose();
    enterNumberNidaSectionController.dispose();
  }
}
