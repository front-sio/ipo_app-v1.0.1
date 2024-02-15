import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';
import 'package:ipo_app/presentation/task_screen/models/task_model.dart';

/// A provider class for the TaskScreen.
///
/// This provider manages the state of the TaskScreen, including the
/// current taskModelObj

// ignore_for_file: must_be_immutable
class TaskProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  TextEditingController searchController1 = TextEditingController();

  TaskModel taskModelObj = TaskModel();

  String radioGroup = "";

  String radioGroup1 = "";

  String radioGroup2 = "";

  String radioGroup3 = "";

  String radioGroup4 = "";

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
    searchController1.dispose();
  }

  void changeRadioButton1(String value) {
    radioGroup = value;
    notifyListeners();
  }

  void changeRadioButton2(String value) {
    radioGroup1 = value;
    notifyListeners();
  }

  void changeRadioButton3(String value) {
    radioGroup2 = value;
    notifyListeners();
  }

  void changeRadioButton4(String value) {
    radioGroup3 = value;
    notifyListeners();
  }

  void changeRadioButton5(String value) {
    radioGroup4 = value;
    notifyListeners();
  }
}
