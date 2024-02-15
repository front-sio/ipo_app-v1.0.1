import '../../../core/app_export.dart';

/// This class is used in the [providercard_item_widget] screen.
class ProvidercardItemModel {
  ProvidercardItemModel({
    this.userName,
    this.serviceText,
    this.ratingNumber,
    this.locationText,
    this.id,
  }) {
    userName = userName ?? "John doe";
    serviceText = serviceText ?? "cutting hair master";
    ratingNumber = ratingNumber ?? "4.5";
    locationText = locationText ?? "kinondoni manyn..";
    id = id ?? "";
  }

  String? userName;

  String? serviceText;

  String? ratingNumber;

  String? locationText;

  String? id;
}
