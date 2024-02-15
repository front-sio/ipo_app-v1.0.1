import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';
import 'package:ipo_app/presentation/task_screen_my_tasks_page/models/task_screen_my_tasks_model.dart';
import '../models/userprofilelist_item_model.dart';

/// A provider class for the TaskScreenMyTasksPage.
///
/// This provider manages the state of the TaskScreenMyTasksPage, including the
/// current taskScreenMyTasksModelObj

// ignore_for_file: must_be_immutable
class TaskScreenMyTasksProvider extends ChangeNotifier {
  TaskScreenMyTasksModel taskScreenMyTasksModelObj = TaskScreenMyTasksModel();

  @override
  void dispose() {
    super.dispose();
  }
}
