import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';
import 'package:ipo_app/widgets/custom_outlined_button.dart';
import 'provider/profile_provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileScreenState createState() => ProfileScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileProvider(),
      child: ProfileScreen(),
    );
  }
}

class ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 26.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100.v,
                        width: 112.h,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgPeople,
                              height: 100.adaptSize,
                              width: 100.adaptSize,
                              radius: BorderRadius.circular(
                                50.h,
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgCamera,
                              height: 24.v,
                              width: 28.h,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(bottom: 28.v),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 2.v),
                      Text(
                        "lbl_john_doe2".tr,
                        style: CustomTextStyles.titleMediumPoppinsMedium_1,
                      ),
                      SizedBox(height: 11.v),
                      CustomOutlinedButton(
                        height: 30.v,
                        width: 150.h,
                        text: "lbl_edit_profile".tr,
                        buttonStyle: CustomButtonStyles.outlineBlackTL10,
                        buttonTextStyle:
                            CustomTextStyles.titleMediumPoppinsMedium_1,
                      ),
                      SizedBox(height: 22.v),
                      _buildPaymentRow(context),
                      SizedBox(height: 18.v),
                      _buildPaymentRow1(context),
                      SizedBox(height: 13.v),
                      _buildNotificationRow(context),
                      SizedBox(height: 13.v),
                      _buildLanguageRow(context),
                      SizedBox(height: 13.v),
                      _buildAboutRow(context),
                      SizedBox(height: 14.v),
                      _buildMessageRow(context),
                      SizedBox(height: 12.v),
                      _buildPrivacyAndSecurityRow(context),
                      SizedBox(height: 14.v),
                      _buildSavedRow(context),
                      SizedBox(height: 22.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 27.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgLocation35x35,
                                height: 35.adaptSize,
                                width: 35.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 16.h,
                                  top: 5.v,
                                  bottom: 12.v,
                                ),
                                child: Text(
                                  "lbl_saved_places".tr,
                                  style: CustomTextStyles.titleSmallInter,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 12.v),
                      _buildLogoutRow(context),
                      SizedBox(height: 129.v),
                      _buildBottomBarStack(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLightIncon,
            height: 25.adaptSize,
            width: 25.adaptSize,
            margin: EdgeInsets.only(bottom: 3.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 28.h,
              top: 8.v,
              bottom: 4.v,
            ),
            child: Text(
              "lbl_light_mode".tr,
              style: CustomTextStyles.titleSmallInterMedium,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgLightModeInc,
            height: 30.v,
            width: 50.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentRow1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 165.h,
            margin: EdgeInsets.symmetric(vertical: 8.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPayment,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Text(
                    "lbl_payment_method".tr,
                    style: CustomTextStyles.titleSmallInterMedium,
                  ),
                ),
              ],
            ),
          ),
          Opacity(
            opacity: 0.4,
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 38.v,
              width: 28.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 128.h,
            margin: EdgeInsets.symmetric(vertical: 6.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPayment25x25,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "lbl_notification".tr,
                    style: CustomTextStyles.titleSmallInterMedium,
                  ),
                ),
              ],
            ),
          ),
          Opacity(
            opacity: 0.4,
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 38.v,
              width: 28.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLanguageRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 117.h,
            margin: EdgeInsets.only(
              top: 6.v,
              bottom: 8.v,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPayment20x20,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(bottom: 3.v),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6.v),
                  child: Text(
                    "lbl_language".tr,
                    style: CustomTextStyles.titleSmallInterMedium,
                  ),
                ),
              ],
            ),
          ),
          Opacity(
            opacity: 0.4,
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 38.v,
              width: 28.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAboutRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 92.h,
            margin: EdgeInsets.symmetric(vertical: 6.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPayment1,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "lbl_about2".tr,
                    style: CustomTextStyles.titleSmallInterMedium,
                  ),
                ),
              ],
            ),
          ),
          Opacity(
            opacity: 0.4,
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 38.v,
              width: 28.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMessageRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 112.h,
            margin: EdgeInsets.symmetric(vertical: 4.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMessages,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 8.v,
                    bottom: 4.v,
                  ),
                  child: Text(
                    "lbl_message".tr,
                    style: CustomTextStyles.titleSmallInterMedium,
                  ),
                ),
              ],
            ),
          ),
          Opacity(
            opacity: 0.4,
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 38.v,
              width: 28.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPrivacyAndSecurityRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 6.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPayment2,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 26.h,
                    top: 6.v,
                  ),
                  child: Text(
                    "msg_privacy_and_security".tr,
                    style: CustomTextStyles.titleSmallInterMedium,
                  ),
                ),
              ],
            ),
          ),
          Opacity(
            opacity: 0.4,
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 38.v,
              width: 28.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSavedRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 115.h,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 8.v,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBookmark,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.v),
                  child: Text(
                    "lbl_my_saved".tr,
                    style: CustomTextStyles.titleSmallInterMedium,
                  ),
                ),
              ],
            ),
          ),
          Opacity(
            opacity: 0.4,
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 38.v,
              width: 28.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLogoutRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 32.h,
        right: 29.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 93.h,
            margin: EdgeInsets.symmetric(vertical: 6.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLogout,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "lbl_logout".tr,
                    style: CustomTextStyles.titleSmallInterRed50001,
                  ),
                ),
              ],
            ),
          ),
          Opacity(
            opacity: 0.4,
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 38.v,
              width: 28.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBarStack(BuildContext context) {
    return SizedBox(
      height: 88.v,
      width: 428.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 86.v,
              width: 428.h,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 17.h,
                top: 26.v,
                right: 17.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5.v),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgHome,
                          height: 30.adaptSize,
                          width: 30.adaptSize,
                        ),
                        SizedBox(height: 6.v),
                        Text(
                          "lbl_home".tr,
                          style: CustomTextStyles.titleSmallPoppinsGray700,
                        ),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 46,
                  ),
                  Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgNavTask,
                        height: 40.v,
                        width: 50.h,
                      ),
                      SizedBox(height: 1.v),
                      Text(
                        "lbl_task".tr,
                        style: CustomTextStyles.titleSmallPoppinsGray60002,
                      ),
                    ],
                  ),
                  Spacer(
                    flex: 53,
                  ),
                  Container(
                    height: 51.v,
                    width: 44.h,
                    margin: EdgeInsets.only(
                      top: 7.v,
                      bottom: 4.v,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgProfileErrorcontainer,
                          height: 37.v,
                          width: 43.h,
                          alignment: Alignment.topCenter,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "lbl_profile".tr,
                            style:
                                CustomTextStyles.labelLargeRobotoErrorContainer,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
