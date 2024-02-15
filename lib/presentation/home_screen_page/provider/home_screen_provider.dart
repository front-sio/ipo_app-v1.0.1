import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';
import 'package:ipo_app/presentation/home_screen_page/models/home_screen_model.dart';
import '../models/providercard_item_model.dart';

/// A provider class for the HomeScreenPage.
///
/// This provider manages the state of the HomeScreenPage, including the
/// current homeScreenModelObj

// ignore_for_file: must_be_immutable
class HomeScreenProvider extends ChangeNotifier {
  HomeScreenModel homeScreenModelObj = HomeScreenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
