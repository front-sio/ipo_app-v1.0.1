import '../models/providercard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';
import 'package:ipo_app/widgets/custom_elevated_button.dart';
import 'package:ipo_app/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class ProvidercardItemWidget extends StatelessWidget {
  ProvidercardItemWidget(
    this.providercardItemModelObj, {
    Key? key,
    this.onTapBookMeButton,
  }) : super(
          key: key,
        );

  ProvidercardItemModel providercardItemModelObj;

  VoidCallback? onTapBookMeButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 32.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder3,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgServiceProvider,
            height: 130.adaptSize,
            width: 130.adaptSize,
            radius: BorderRadius.circular(
              65.h,
            ),
            alignment: Alignment.center,
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              children: [
                Text(
                  providercardItemModelObj.userName!,
                  style: CustomTextStyles.labelLargePoppinsBlack900,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVerfied,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                  margin: EdgeInsets.only(
                    left: 55.h,
                    bottom: 5.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              providercardItemModelObj.serviceText!,
              style: theme.textTheme.labelMedium,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 3.v,
                    bottom: 1.v,
                  ),
                  child: CustomRatingBar(
                    ignoreGestures: true,
                    initialRating: 4,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 41.h),
                  child: Text(
                    providercardItemModelObj.ratingNumber!,
                    style: CustomTextStyles.labelMediumErrorContainer,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgUMapMarker,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 3.h,
                  top: 2.v,
                  bottom: 2.v,
                ),
                child: Text(
                  providercardItemModelObj.locationText!,
                  style: CustomTextStyles.labelMediumBlack900,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.v),
          CustomElevatedButton(
            height: 30.v,
            width: 132.h,
            text: "lbl_book_me".tr,
            margin: EdgeInsets.only(left: 2.h),
            buttonTextStyle: CustomTextStyles.labelMediumRobotoPrimary,
            onPressed: () {
              onTapBookMeButton!.call();
            },
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }
}
