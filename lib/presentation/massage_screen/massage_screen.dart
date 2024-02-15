import 'models/massage_model.dart';
import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';
import 'package:ipo_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:ipo_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:ipo_app/widgets/app_bar/appbar_title_circleimage.dart';
import 'package:ipo_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ipo_app/widgets/app_bar/custom_app_bar.dart';
import 'package:ipo_app/widgets/custom_elevated_button.dart';
import 'package:ipo_app/widgets/custom_icon_button.dart';
import 'package:ipo_app/widgets/custom_text_form_field.dart';
import 'provider/massage_provider.dart';

class MassageScreen extends StatefulWidget {
  const MassageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MassageScreenState createState() => MassageScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MassageProvider(),
      child: MassageScreen(),
    );
  }
}

class MassageScreenState extends State<MassageScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 6.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              _buildJohnDoe(
                context,
                johnDoe: "lbl_john_doe".tr,
                time: "lbl_10_min_ago".tr,
              ),
              SizedBox(height: 10.v),
              Container(
                margin: EdgeInsets.only(right: 140.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 14.v,
                ),
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderBL16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 3.v),
                    Text(
                      "msg_hello_how_are_you".tr,
                      style: CustomTextStyles.bodyMediumPoppins,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 34.v),
              _buildThankYouINeedToRepairAC1(context),
              SizedBox(height: 42.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 143.h,
                    right: 4.h,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 14.v,
                  ),
                  decoration: AppDecoration.fillIndigoA.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 2.v),
                      SizedBox(
                        width: 223.h,
                        child: Text(
                          "msg_well_i_need_a_reliable".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumPoppinsPrimary
                              .copyWith(
                            height: 1.57,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 11.v),
              _buildJohnDoe(
                context,
                johnDoe: "lbl_john_doe".tr,
                time: "lbl_3_min_ago".tr,
              ),
              SizedBox(height: 10.v),
              _buildOkyFineIWillArriveEarly(context),
              SizedBox(height: 36.v),
              _buildOky(context),
              SizedBox(height: 7.v),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse58,
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    radius: BorderRadius.circular(
                      15.h,
                    ),
                    margin: EdgeInsets.only(
                      top: 3.v,
                      bottom: 21.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_john_doe".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 2.v),
                        Text(
                          "lbl_online".tr,
                          style: CustomTextStyles.bodySmallGray400,
                        ),
                        SizedBox(height: 5.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame758531091,
                          height: 16.v,
                          width: 51.h,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 57.v),
              _buildFortyFour(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 67.v,
      leadingWidth: 24.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgUser,
        margin: EdgeInsets.only(
          left: 11.h,
          top: 19.v,
          bottom: 21.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 47.h),
        child: Row(
          children: [
            AppbarTitleCircleimage(
              imagePath: ImageConstant.imgOval36x36,
            ),
            AppbarSubtitle(
              text: "lbl_john_doe".tr,
              margin: EdgeInsets.only(
                left: 19.h,
                top: 7.v,
                bottom: 9.v,
              ),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgUpload,
          margin: EdgeInsets.fromLTRB(24.h, 24.v, 23.h, 2.v),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgCall,
          margin: EdgeInsets.only(
            left: 29.h,
            top: 21.v,
            right: 47.h,
          ),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildThankYouINeedToRepairAC(BuildContext context) {
    return CustomElevatedButton(
      height: 54.v,
      width: 238.h,
      text: "msg_thank_you_i_need".tr,
      buttonStyle: CustomButtonStyles.fillIndigoA,
      buttonTextStyle: CustomTextStyles.bodyMediumPoppinsPrimary,
      alignment: Alignment.topRight,
    );
  }

  /// Section Widget
  Widget _buildOkyWhenDoYouNeedItFixed(BuildContext context) {
    return CustomElevatedButton(
      height: 54.v,
      text: "msg_oky_when_do_you".tr,
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.bodyMediumPoppins,
    );
  }

  /// Section Widget
  Widget _buildThankYouINeedToRepairAC1(BuildContext context) {
    return SizedBox(
      height: 135.v,
      width: 392.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          _buildThankYouINeedToRepairAC(context),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(right: 151.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildJohnDoe(
                    context,
                    johnDoe: "lbl_john_doe".tr,
                    time: "lbl_5_min_ago".tr,
                  ),
                  SizedBox(height: 10.v),
                  _buildOkyWhenDoYouNeedItFixed(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOkyFineIWillArriveEarly(BuildContext context) {
    return CustomElevatedButton(
      height: 54.v,
      width: 203.h,
      text: "msg_oky_fine_i_will".tr,
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.bodyMediumPoppins,
    );
  }

  /// Section Widget
  Widget _buildOky(BuildContext context) {
    return CustomElevatedButton(
      height: 54.v,
      width: 57.h,
      text: "lbl_oky".tr,
      margin: EdgeInsets.only(right: 10.h),
      buttonStyle: CustomButtonStyles.fillIndigoA,
      buttonTextStyle: CustomTextStyles.bodyMediumPoppinsPrimary,
      alignment: Alignment.centerRight,
    );
  }

  /// Section Widget
  Widget _buildMessage(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 6.h),
        child: Selector<MassageProvider, TextEditingController?>(
          selector: (
            context,
            provider,
          ) =>
              provider.messageController,
          builder: (context, messageController, child) {
            return CustomTextFormField(
              controller: messageController,
              hintText: "lbl_send_message".tr,
              textInputAction: TextInputAction.done,
              suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 9.v, 16.h, 9.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 25.v,
                  width: 26.h,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 45.v,
              ),
              contentPadding: EdgeInsets.only(
                left: 30.h,
                top: 10.v,
                bottom: 10.v,
              ),
              borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
              filled: true,
              fillColor: appTheme.blueGray50,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyFour(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.h),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 12.v,
              bottom: 6.v,
            ),
            child: CustomIconButton(
              height: 27.adaptSize,
              width: 27.adaptSize,
              padding: EdgeInsets.all(3.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgPlus,
              ),
            ),
          ),
          _buildMessage(context),
          CustomImageView(
            imagePath: ImageConstant.imgTelevision,
            height: 18.v,
            width: 19.h,
            margin: EdgeInsets.only(
              left: 26.h,
              top: 12.v,
              bottom: 13.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildJohnDoe(
    BuildContext context, {
    required String johnDoe,
    required String time,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse58,
          height: 30.adaptSize,
          width: 30.adaptSize,
          radius: BorderRadius.circular(
            15.h,
          ),
          margin: EdgeInsets.only(top: 3.v),
        ),
        Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                johnDoe,
                style: theme.textTheme.titleMedium!.copyWith(
                  color: appTheme.black900,
                ),
              ),
              SizedBox(height: 3.v),
              Text(
                time,
                style: CustomTextStyles.bodySmallGray400.copyWith(
                  color: appTheme.gray400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
