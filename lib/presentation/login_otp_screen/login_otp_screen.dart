import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';
import 'package:ipo_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:ipo_app/widgets/app_bar/custom_app_bar.dart';
import 'package:ipo_app/widgets/custom_elevated_button.dart';
import 'package:ipo_app/widgets/custom_pin_code_text_field.dart';
import 'provider/login_otp_provider.dart';

class LoginOtpScreen extends StatefulWidget {
  const LoginOtpScreen({Key? key}) : super(key: key);

  @override
  LoginOtpScreenState createState() => LoginOtpScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginOtpProvider(),
      child: LoginOtpScreen(),
    );
  }
}

class LoginOtpScreenState extends State<LoginOtpScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    LoginOtpProvider loginOtpProvider =
    Provider.of<LoginOtpProvider>(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(left: 48.h, top: 61.v, right: 48.h),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 38.h),
                  child: Text(
                    "msg_enter_verification".tr,
                    style: CustomTextStyles.titleLargePoppins,
                  ),
                ),
              ),
              SizedBox(height: 29.v),
              Container(
                width: 258.h,
                margin: EdgeInsets.symmetric(horizontal: 38.h),
                child: Text(
                  "msg_enter_code_that".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmallPoppinsGray70001,
                ),
              ),
              SizedBox(height: 59.v),
              Padding(
                padding: EdgeInsets.only(left: 14.h),
                child: CustomPinCodeTextField(
                  context: context,
                  controller: loginOtpProvider.otpController,
                  onChanged: (value) {
                    loginOtpProvider.otpController.text = value;
                  },
                ),
              ),
              SizedBox(height: 29.v),
              CustomElevatedButton(
                height: 45.v,
                text: "lbl_verify".tr,
                margin: EdgeInsets.only(left: 14.h),
                buttonStyle: CustomButtonStyles.fillErrorContainer,
                buttonTextStyle: CustomTextStyles.titleLargePoppinsPrimary,
                onPressed: () {
                  _verifyOTP(context, loginOtpProvider);
                },
              ),
              SizedBox(height: 47.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 41.h),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "msg_didn_t_receive_the2".tr,
                        style: CustomTextStyles.titleSmallPoppinsff000000,
                      ),
                      TextSpan(
                        text: "lbl_resend".tr,
                        style: CustomTextStyles.titleSmallPoppinsffff9134,
                      )
                    ]),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGroup,
        margin: EdgeInsets.fromLTRB(27.h, 17.v, 394.h, 18.v),
        onTap: () {
          onTapImage(context);
        },
      ),
    );
  }

  onTapImage(BuildContext context) {
    NavigatorService.goBack();
  }

  void _verifyOTP(BuildContext context, LoginOtpProvider loginOtpProvider) async {
    String phoneNumber = ''; // Add your phone number here
    String otp = loginOtpProvider.otpController.text;
    bool isVerified = await loginOtpProvider.verifyOTP(phoneNumber, otp);
    if (isVerified) {
      NavigatorService.pushNamed(AppRoutes.homeScreenPage);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('OTP verification failed. Please try again.'),
        ),
      );
    }
  }
}
