import 'models/detail_confirm_provider_model.dart';
import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';
import 'package:ipo_app/widgets/custom_elevated_button.dart';
import 'provider/detail_confirm_provider_provider.dart';

// ignore_for_file: must_be_immutable
class DetailConfirmProviderBottomsheet extends StatefulWidget {
  const DetailConfirmProviderBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  DetailConfirmProviderBottomsheetState createState() =>
      DetailConfirmProviderBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DetailConfirmProviderProvider(),
      child: DetailConfirmProviderBottomsheet(),
    );
  }
}

class DetailConfirmProviderBottomsheetState
    extends State<DetailConfirmProviderBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildScheduleTaskScrollView(context);
  }

  /// Section Widget
  Widget _buildScheduleTaskScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 274.v,
        width: 421.h,
        margin: EdgeInsets.only(
          left: 6.h,
          right: 2.h,
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 274.v,
                width: 420.h,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(15.h),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(right: 1.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 11.h,
                  vertical: 22.v,
                ),
                decoration: AppDecoration.fillPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL15,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomElevatedButton(
                      height: 65.v,
                      text: "lbl_schedule_task".tr,
                      margin: EdgeInsets.only(right: 16.h),
                      buttonStyle: CustomButtonStyles.outlineBlack,
                      buttonTextStyle: CustomTextStyles.titleMediumPoppins,
                    ),
                    SizedBox(height: 29.v),
                    CustomElevatedButton(
                      height: 65.v,
                      text: "lbl_send_request".tr,
                      margin: EdgeInsets.only(right: 16.h),
                      buttonStyle: CustomButtonStyles.outlineBlack,
                      buttonTextStyle: CustomTextStyles.titleMediumPoppins,
                    ),
                    SizedBox(height: 48.v),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
