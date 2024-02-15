import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';
import 'package:ipo_app/presentation/detail_confirm_provider_bottomsheet/models/detail_confirm_provider_model.dart';

/// A provider class for the DetailConfirmProviderBottomsheet.
///
/// This provider manages the state of the DetailConfirmProviderBottomsheet, including the
/// current detailConfirmProviderModelObj
class DetailConfirmProviderProvider extends ChangeNotifier {
  DetailConfirmProviderModel detailConfirmProviderModelObj =
      DetailConfirmProviderModel();

  @override
  void dispose() {
    super.dispose();
  }
}
