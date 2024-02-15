import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';
import 'package:ipo_app/presentation/map_screen/models/map_model.dart';

/// A provider class for the MapScreen.
///
/// This provider manages the state of the MapScreen, including the
/// current mapModelObj

// ignore_for_file: must_be_immutable
class MapProvider extends ChangeNotifier {
  MapModel mapModelObj = MapModel();

  @override
  void dispose() {
    super.dispose();
  }
}
