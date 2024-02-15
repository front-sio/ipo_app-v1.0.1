import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {
  UserprofilelistItemModel({
    this.userName,
    this.taskName,
    this.calendarText,
    this.timeText,
    this.statusText,
    this.id,
  }) {
    userName = userName ?? "John Doe";
    taskName = taskName ?? "Cleaning service task";
    calendarText = calendarText ?? "Monday, Dec 24";
    timeText = timeText ?? "12:00-13:00";
    statusText = statusText ?? "Confirmed";
    id = id ?? "";
  }

  String? userName;

  String? taskName;

  String? calendarText;

  String? timeText;

  String? statusText;

  String? id;
}
