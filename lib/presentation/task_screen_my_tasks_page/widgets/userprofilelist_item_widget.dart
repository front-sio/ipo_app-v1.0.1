import '../models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 21.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userprofilelistItemModelObj.userName!,
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        userprofilelistItemModelObj.taskName!,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgDamasImage,
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6.v),
          Container(
            margin: EdgeInsets.only(right: 6.h),
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 15.v,
            ),
            decoration: AppDecoration.fillOnError.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCalendar,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    userprofilelistItemModelObj.calendarText!,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Container(
                  width: 203.h,
                  margin: EdgeInsets.only(
                    left: 29.h,
                    right: 1.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgClock,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          userprofilelistItemModelObj.timeText!,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      Container(
                        width: 84.h,
                        margin: EdgeInsets.only(left: 29.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 10.adaptSize,
                              width: 10.adaptSize,
                              margin: EdgeInsets.only(
                                top: 3.v,
                                bottom: 1.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.lightGreen900,
                                borderRadius: BorderRadius.circular(
                                  5.h,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text(
                                userprofilelistItemModelObj.statusText!,
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
