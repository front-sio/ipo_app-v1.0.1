import 'models/login_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';
import 'package:ipo_app/widgets/custom_elevated_button.dart';
import 'package:ipo_app/widgets/custom_phone_number.dart';
import 'provider/login_provider.dart';
import 'package:ipo_app/domain/googleauth/google_auth_helper.dart';
import 'package:ipo_app/domain/facebookauth/facebook_auth_helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LoginProvider(), child: LoginScreen());
  }
}

// ignore_for_file: must_be_immutable
class LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.splashScreen,
      );
    });
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
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            width: double.maxFinite,
                            child: Column(children: [
                              Spacer(),
                              Container(
                                  width: double.maxFinite,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 23.h, vertical: 54.v),
                                  decoration: AppDecoration.fillGray.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL35),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("msg_enter_your_number".tr,
                                            style: CustomTextStyles
                                                .titleLargeRoboto),
                                        SizedBox(height: 20.v),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 34.h),
                                            child: _buildPhoneNumber(context)),
                                        SizedBox(height: 57.v),
                                        _buildSignInButton(context),
                                        SizedBox(height: 40.v),
                                        Text("lbl_or".tr,
                                            style: CustomTextStyles
                                                .titleSmallRoboto14),
                                        SizedBox(height: 27.v),
                                        _buildSignInWithGoogleButton(context),
                                        SizedBox(height: 20.v),
                                        _buildSignInWithFacebookButton(context),
                                        SizedBox(height: 44.v),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                width: 360.h,
                                                margin:
                                                    EdgeInsets.only(left: 22.h),
                                                child: Text(
                                                    "msg_by_signing_up_you".tr,
                                                    maxLines: 4,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .labelLargeRobotoGray900))),
                                        SizedBox(height: 44.v)
                                      ]))
                            ])))))));
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 34.h),
        child: Consumer<LoginProvider>(builder: (context, provider, child) {
          return CustomPhoneNumber(
              country: provider.selectedCountry ??
                  CountryPickerUtils.getCountryByPhoneCode('1'),
              controller: provider.phoneNumberController,
              onTap: (Country value) {
                context.read<LoginProvider>().changeCountry(value);
              });
        }));
  }

  /// Section Widget
  Widget _buildSignInButton(BuildContext context) {
    return CustomElevatedButton(
        height: 45.v,
        text: "lbl_sign_in".tr,
        margin: EdgeInsets.only(left: 35.h, right: 34.h),
        buttonStyle: CustomButtonStyles.fillErrorContainer,
        buttonTextStyle: CustomTextStyles.titleSmallRobotoMedium,
        onPressed: () {
          onTapSignInButton(context);
        });
  }

  /// Section Widget
  Widget _buildSignInWithGoogleButton(BuildContext context) {
    return CustomElevatedButton(
        height: 45.v,
        text: "msg_sign_in_with_google".tr,
        margin: EdgeInsets.symmetric(horizontal: 34.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogle, height: 13.v, width: 20.h)),
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.titleSmallRobotoMedium,
        onPressed: () {
          onTapSignInWithGoogleButton(context);
        });
  }

  /// Section Widget
  Widget _buildSignInWithFacebookButton(BuildContext context) {
    return CustomElevatedButton(
        height: 45.v,
        text: "msg_sign_in_with_facebook".tr,
        margin: EdgeInsets.symmetric(horizontal: 34.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebook,
                height: 13.v,
                width: 20.h)),
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.titleSmallRobotoMedium,
        onPressed: () {
          onTapSignInWithFacebookButton(context);
        });
  }

  /// Navigates to the loginOtpScreen when the action is triggered.
  onTapSignInButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginOtpScreen,
    );
  }

  onTapSignInWithGoogleButton(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  onTapSignInWithFacebookButton(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
