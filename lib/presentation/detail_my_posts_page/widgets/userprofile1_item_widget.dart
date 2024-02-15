import '../models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 9.h,
          vertical: 4.v,
        ),
        decoration: AppDecoration.outlineBlack9001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 6.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSearchErrorcontainer,
                    height: 22.adaptSize,
                    width: 22.adaptSize,
                    margin: EdgeInsets.only(bottom: 3.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgS01tar27x27,
                    height: 27.adaptSize,
                    width: 27.adaptSize,
                    margin: EdgeInsets.only(left: 18.h),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgFavorite,
                    height: 20.v,
                    width: 23.h,
                    margin: EdgeInsets.only(
                      top: 3.v,
                      bottom: 4.v,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.v),
            Container(
              height: 52.v,
              width: 323.h,
              margin: EdgeInsets.only(left: 4.h),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgOval17x17,
                          height: 17.adaptSize,
                          width: 17.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 6.h,
                            bottom: 1.v,
                          ),
                          child: Text(
                            "lbl_ratting_by".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 3.h,
                            bottom: 1.v,
                          ),
                          child: Text(
                            "lbl_mr_oppa".tr,
                            style: CustomTextStyles.labelLargeRobotoBlack900,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 3.h,
                            bottom: 1.v,
                          ),
                          child: Text(
                            "lbl_and".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5.h,
                            bottom: 1.v,
                          ),
                          child: Text(
                            "lbl_44_221_others".tr,
                            style: CustomTextStyles.labelLargeRobotoBlack900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      width: 302.h,
                      child: Text(
                        "msg_john_doe_he_s_a".tr,
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          height: 1.38,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.v),
          ],
        ),
      ),
    );
  }
}
