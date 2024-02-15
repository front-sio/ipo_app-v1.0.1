import 'models/profile_edit_model.dart';
import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';
import 'package:ipo_app/core/utils/validation_functions.dart';
import 'package:ipo_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:ipo_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:ipo_app/widgets/app_bar/custom_app_bar.dart';
import 'package:ipo_app/widgets/custom_elevated_button.dart';
import 'package:ipo_app/widgets/custom_text_form_field.dart';
import 'provider/profile_edit_provider.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileEditScreenState createState() => ProfileEditScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileEditProvider(),
      child: ProfileEditScreen(),
    );
  }
}

class ProfileEditScreenState extends State<ProfileEditScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    _buildArrowDownSection(context),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 56.h,
                        vertical: 19.v,
                      ),
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_username".tr,
                                style: CustomTextStyles.titleSmallPoppins,
                              ),
                              SizedBox(height: 2.v),
                              _buildUsernameSection(context),
                              SizedBox(height: 18.v),
                              Text(
                                "lbl_email".tr,
                                style: CustomTextStyles.titleSmallPoppins,
                              ),
                              SizedBox(height: 2.v),
                              _buildEmailSection(context),
                              SizedBox(height: 15.v),
                              Text(
                                "lbl_phone_number".tr,
                                style: CustomTextStyles.titleSmallPoppins,
                              ),
                              SizedBox(height: 5.v),
                              _buildPhoneNumberSection(context),
                              SizedBox(height: 18.v),
                              Text(
                                "lbl_nida".tr,
                                style: CustomTextStyles.titleSmallPoppins,
                              ),
                            ],
                          ),
                          SizedBox(height: 2.v),
                          _buildEnterNumberNidaSection(context),
                          SizedBox(height: 65.v),
                          _buildUpdateSection(context),
                          SizedBox(height: 5.v),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowDownSection(BuildContext context) {
    return SizedBox(
      height: 278.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomAppBar(
            height: 188.v,
            leadingWidth: 43.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrowDown,
              margin: EdgeInsets.only(
                left: 17.h,
                top: 50.v,
                bottom: 108.v,
              ),
            ),
            centerTitle: true,
            title: AppbarSubtitleOne(
              text: "lbl_edit_profile".tr,
              margin: EdgeInsets.only(
                top: 53.v,
                bottom: 111.v,
              ),
            ),
            styleType: Style.bgFill_1,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 144.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgUnsplashJmurdhtm7ng,
                    height: 142.adaptSize,
                    width: 142.adaptSize,
                    radius: BorderRadius.circular(
                      71.h,
                    ),
                  ),
                  SizedBox(height: 1.v),
                  Text(
                    "lbl_change_picture".tr,
                    style: CustomTextStyles.bodySmallPoppins,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUsernameSection(BuildContext context) {
    return Selector<ProfileEditProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.usernameSectionController,
      builder: (context, usernameSectionController, child) {
        return CustomTextFormField(
          controller: usernameSectionController,
          hintText: "lbl_enter_user_name".tr,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return Selector<ProfileEditProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.emailSectionController,
      builder: (context, emailSectionController, child) {
        return CustomTextFormField(
          controller: emailSectionController,
          hintText: "msg_enter_user_email".tr,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberSection(BuildContext context) {
    return Selector<ProfileEditProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.phoneNumberSectionController,
      builder: (context, phoneNumberSectionController, child) {
        return CustomTextFormField(
          controller: phoneNumberSectionController,
          hintText: "msg_enter_phone_number".tr,
          textInputType: TextInputType.phone,
          validator: (value) {
            if (!isValidPhone(value)) {
              return "err_msg_please_enter_valid_phone_number".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEnterNumberNidaSection(BuildContext context) {
    return Selector<ProfileEditProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.enterNumberNidaSectionController,
      builder: (context, enterNumberNidaSectionController, child) {
        return CustomTextFormField(
          controller: enterNumberNidaSectionController,
          hintText: "msg_enter_number_nida".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.number,
          validator: (value) {
            if (!isNumeric(value)) {
              return "err_msg_please_enter_valid_number".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildUpdateSection(BuildContext context) {
    return CustomElevatedButton(
      height: 40.v,
      text: "lbl_update".tr,
      margin: EdgeInsets.only(
        left: 18.h,
        right: 17.h,
      ),
      buttonStyle: CustomButtonStyles.fillErrorContainer,
      buttonTextStyle: CustomTextStyles.titleSmallPoppinsPrimary,
    );
  }
}
