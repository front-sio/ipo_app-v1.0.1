import 'models/audio_call_model.dart';
import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';
import 'package:ipo_app/widgets/custom_icon_button.dart';
import 'provider/audio_call_provider.dart';

class AudioCallScreen extends StatefulWidget {
  const AudioCallScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AudioCallScreenState createState() => AudioCallScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AudioCallProvider(),
      child: AudioCallScreen(),
    );
  }
}

class AudioCallScreenState extends State<AudioCallScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle1,
                height: 932.v,
                width: 430.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 101.h,
                      vertical: 112.v,
                    ),
                    decoration: AppDecoration.fillSecondaryContainer,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 232.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse59,
                          height: 157.adaptSize,
                          width: 157.adaptSize,
                          radius: BorderRadius.circular(
                            78.h,
                          ),
                        ),
                        SizedBox(height: 136.v),
                        Text(
                          "lbl_00_11_45".tr,
                          style: CustomTextStyles.labelLargeRobotoPrimary,
                        ),
                        SizedBox(height: 39.v),
                        Padding(
                          padding: EdgeInsets.only(right: 1.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomIconButton(
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                padding: EdgeInsets.all(10.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup2,
                                ),
                              ),
                              Spacer(
                                flex: 44,
                              ),
                              CustomIconButton(
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                padding: EdgeInsets.all(10.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup3,
                                ),
                              ),
                              Spacer(
                                flex: 55,
                              ),
                              CustomIconButton(
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                padding: EdgeInsets.all(9.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup4,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 33.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowUp,
                          height: 11.v,
                          width: 21.h,
                        ),
                        SizedBox(height: 23.v),
                        Text(
                          "msg_swipe_back_to_menu".tr,
                          style: CustomTextStyles.labelLargeRobotoPrimary,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
