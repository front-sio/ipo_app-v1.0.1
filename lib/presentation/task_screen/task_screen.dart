import 'models/task_model.dart';
import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';
import 'package:ipo_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:ipo_app/widgets/app_bar/custom_app_bar.dart';
import 'package:ipo_app/widgets/custom_elevated_button.dart';
import 'package:ipo_app/widgets/custom_radio_button.dart';
import 'package:ipo_app/widgets/custom_search_view.dart';
import 'provider/task_provider.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  TaskScreenState createState() => TaskScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TaskProvider(), child: TaskScreen());
  }
}

class TaskScreenState extends State<TaskScreen> {
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
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: 1292.v,
                        width: 417.h,
                        margin: EdgeInsets.only(left: 13.h),
                        child: Stack(alignment: Alignment.topLeft, children: [
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 3.h, right: 14.h),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        _buildDoeTen(context),
                                        SizedBox(height: 20.v),
                                        _buildDoeEleven(context),
                                        SizedBox(height: 23.v),
                                        _buildDoeThirteen(context),
                                        SizedBox(height: 20.v),
                                        _buildDoeFourteen(context),
                                        SizedBox(height: 23.v),
                                        _buildNameDoe(context),
                                        SizedBox(height: 20.v),
                                        _buildNameDoe1(context)
                                      ]))),
                          _buildDoeNine(context),
                          _buildBottomBar(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgGroupBlack900,
            margin: EdgeInsets.fromLTRB(31.h, 15.v, 389.h, 15.v),
            onTap: () {
              onTapImage(context);
            }));
  }

  /// Section Widget
  Widget _buildTaskDetails(BuildContext context) {
    return CustomElevatedButton(
        width: 85.h,
        text: "lbl_task_details".tr,
        margin: EdgeInsets.only(top: 1.v, right: 6.h));
  }

  /// Section Widget
  Widget _buildCancel(BuildContext context) {
    return CustomElevatedButton(
        height: 44.v,
        text: "lbl_cancel".tr,
        margin: EdgeInsets.only(left: 10.h),
        buttonStyle: CustomButtonStyles.fillRed,
        buttonTextStyle: CustomTextStyles.titleMediumPrimary);
  }

  /// Section Widget
  Widget _buildDoeTen(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 4.h, right: 14.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgDamasImage45x45,
                                  height: 45.adaptSize,
                                  width: 45.adaptSize,
                                  radius: BorderRadius.circular(5.h)),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 12.h, bottom: 3.v),
                                  child: _buildDamasKhamis(context,
                                      userName: "lbl_damas_khamis".tr,
                                      serviceText: "msg_cleaning_service2".tr)),
                              Spacer(),
                              CustomImageView(
                                  imagePath: ImageConstant.imgClose,
                                  height: 10.adaptSize,
                                  width: 10.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 7.v, bottom: 28.v))
                            ])),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 14.h, top: 5.v, bottom: 24.v),
                            child: Text("lbl_pending".tr,
                                style: theme.textTheme.labelLarge))
                      ])),
              SizedBox(height: 6.v),
              Container(
                  margin: EdgeInsets.only(left: 9.h),
                  padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 6.v),
                  decoration: AppDecoration.fillOnError.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 9.v),
                            child: _buildFortyNine(context,
                                eventDate: "lbl_monday_dec_24".tr,
                                eventTime: "lbl_12_00_13_00".tr)),
                        _buildTaskDetails(context)
                      ])),
              SizedBox(height: 6.v),
              _buildCancel(context),
              SizedBox(height: 1.v)
            ]));
  }

  /// Section Widget
  Widget _buildWaitingForTaskToStart(BuildContext context) {
    return CustomElevatedButton(
        height: 44.v,
        text: "msg_waiting_for_task".tr,
        buttonStyle: CustomButtonStyles.fillYellowA,
        buttonTextStyle: theme.textTheme.titleMedium!);
  }

  /// Section Widget
  Widget _buildWaitingForTaskToStart1(BuildContext context) {
    return CustomElevatedButton(
        height: 44.v,
        text: "msg_waiting_for_task".tr,
        buttonStyle: CustomButtonStyles.fillYellowA,
        buttonTextStyle: theme.textTheme.titleMedium!);
  }

  /// Section Widget
  Widget _buildTaskDetails1(BuildContext context) {
    return CustomElevatedButton(
        width: 85.h,
        text: "lbl_task_details".tr,
        margin: EdgeInsets.only(left: 39.h, top: 1.v));
  }

  /// Section Widget
  Widget _buildDoeEleven(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        color: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Container(
            height: 170.v,
            width: 400.h,
            decoration: AppDecoration.fillPrimary
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                      height: 149.v,
                      width: 366.h,
                      child: Stack(alignment: Alignment.topLeft, children: [
                        Padding(
                            padding: EdgeInsets.only(
                                left: 57.h, top: 1.v, right: 193.h),
                            child: _buildDamasKhamis(context,
                                userName: "lbl_damas_khamis".tr,
                                serviceText: "msg_cleaning_service2".tr)),
                        CustomImageView(
                            imagePath: ImageConstant.imgDamasImage45x45,
                            height: 45.adaptSize,
                            width: 45.adaptSize,
                            radius: BorderRadius.circular(5.h),
                            alignment: Alignment.topLeft),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Consumer<TaskProvider>(builder:
                                              (context, provider, child) {
                                            return Padding(
                                                padding: EdgeInsets.only(
                                                    right: 18.h),
                                                child: CustomRadioButton(
                                                    text: "lbl_started".tr,
                                                    value: "lbl_started".tr,
                                                    groupValue:
                                                        provider.radioGroup,
                                                    onChange: (value) {
                                                      provider
                                                          .changeRadioButton1(
                                                              value);
                                                    }));
                                          })),
                                      SizedBox(height: 85.v),
                                      _buildWaitingForTaskToStart(context)
                                    ]))),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 5.h, top: 50.v, bottom: 50.v),
                            child: _buildDown(context,
                                dateText: "lbl_monday_dec_24".tr,
                                timeText: "lbl_12_00_13_00".tr,
                                taskDetailsText: "lbl_task_details".tr))
                      ]))),
              Align(
                  alignment: Alignment.center,
                  child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Container(
                          height: 170.v,
                          width: 400.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.h, vertical: 10.v),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 61.h, top: 1.v, right: 193.h),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Text("lbl_damas_khamis".tr,
                                                  style: theme
                                                      .textTheme.titleSmall)),
                                          SizedBox(height: 4.v),
                                          Text("msg_cleaning_service2".tr,
                                              style: CustomTextStyles
                                                  .labelLargeBlack90013)
                                        ]))),
                            CustomImageView(
                                imagePath: ImageConstant.imgDamasImage45x45,
                                height: 45.adaptSize,
                                width: 45.adaptSize,
                                radius: BorderRadius.circular(5.h),
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: 4.h)),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Consumer<TaskProvider>(
                                                  builder: (context, provider,
                                                      child) {
                                                return Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 18.h),
                                                    child: CustomRadioButton(
                                                        text: "lbl_started".tr,
                                                        value: "lbl_started".tr,
                                                        groupValue: provider
                                                            .radioGroup1,
                                                        onChange: (value) {
                                                          provider
                                                              .changeRadioButton2(
                                                                  value);
                                                        }));
                                              })),
                                          SizedBox(height: 85.v),
                                          _buildWaitingForTaskToStart1(context)
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    margin: EdgeInsets.only(
                                        left: 9.h, top: 51.v, bottom: 51.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 1.h, vertical: 6.v),
                                    decoration: AppDecoration.fillOnError
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgCalendar,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 10.v)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 8.h,
                                              top: 10.v,
                                              bottom: 9.v),
                                          child: Text("lbl_monday_dec_24".tr,
                                              style:
                                                  theme.textTheme.labelLarge)),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgClock,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 16.h,
                                              top: 10.v,
                                              bottom: 10.v)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 8.h,
                                              top: 10.v,
                                              bottom: 10.v),
                                          child: Text("lbl_12_00_13_00".tr,
                                              style:
                                                  theme.textTheme.labelLarge)),
                                      _buildTaskDetails1(context)
                                    ])))
                          ]))))
            ])));
  }

  /// Section Widget
  Widget _buildTaskDetails2(BuildContext context) {
    return CustomElevatedButton(
        width: 85.h,
        text: "lbl_task_details".tr,
        margin: EdgeInsets.only(top: 1.v, right: 6.h));
  }

  /// Section Widget
  Widget _buildTrack(BuildContext context) {
    return CustomElevatedButton(
        height: 44.v,
        text: "lbl_track".tr,
        margin: EdgeInsets.only(left: 10.h),
        buttonStyle: CustomButtonStyles.fillLightGreenA,
        buttonTextStyle: CustomTextStyles.titleMediumPrimary,
        onPressed: () {
          onTapTrack(context);
        });
  }

  /// Section Widget
  Widget _buildDoeThirteen(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 4.h, right: 11.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              SizedBox(
                                  width: 173.h,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgDamasImage45x45,
                                            height: 45.adaptSize,
                                            width: 45.adaptSize,
                                            radius: BorderRadius.circular(5.h)),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 3.v),
                                            child: _buildDamasKhamis(context,
                                                userName: "lbl_damas_khamis".tr,
                                                serviceText:
                                                    "msg_cleaning_service2".tr))
                                      ])),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgCloseLightGreenA700,
                                  height: 10.adaptSize,
                                  width: 10.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 7.v, bottom: 28.v))
                            ])),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 10.h, top: 5.v, bottom: 24.v),
                            child: Text("lbl_accepted".tr,
                                style: theme.textTheme.labelLarge))
                      ])),
              SizedBox(height: 6.v),
              Container(
                  margin: EdgeInsets.only(left: 9.h),
                  padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 6.v),
                  decoration: AppDecoration.fillOnError.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 9.v),
                            child: _buildFortyNine(context,
                                eventDate: "lbl_monday_dec_24".tr,
                                eventTime: "lbl_12_00_13_00".tr)),
                        _buildTaskDetails2(context)
                      ])),
              SizedBox(height: 6.v),
              _buildTrack(context),
              SizedBox(height: 1.v)
            ]));
  }

  /// Section Widget
  Widget _buildDoeFourteen(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 4.h, right: 18.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgDamasImage45x45,
                            height: 45.adaptSize,
                            width: 45.adaptSize,
                            radius: BorderRadius.circular(5.h)),
                        Expanded(
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: 12.h, bottom: 3.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        Consumer<TaskProvider>(builder:
                                            (context, provider, child) {
                                          return CustomRadioButton(
                                              width: 228.h,
                                              text: "lbl_damas_khamis".tr,
                                              value: "lbl_damas_khamis".tr,
                                              groupValue: provider.radioGroup2,
                                              textStyle:
                                                  theme.textTheme.titleSmall,
                                              isRightCheck: true,
                                              onChange: (value) {
                                                provider
                                                    .changeRadioButton3(value);
                                              });
                                        }),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 17.h, top: 2.v),
                                            child: Text("lbl_started".tr,
                                                style:
                                                    theme.textTheme.labelLarge))
                                      ]),
                                      SizedBox(height: 4.v),
                                      Text("msg_cleaning_service2".tr,
                                          style: CustomTextStyles
                                              .labelLargeBlack90013)
                                    ])))
                      ])),
              SizedBox(height: 6.v),
              Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: _buildDown(context,
                      dateText: "lbl_monday_dec_24".tr,
                      timeText: "lbl_12_00_13_00".tr,
                      taskDetailsText: "lbl_task_details".tr)),
              SizedBox(height: 6.v),
              Container(
                  margin: EdgeInsets.only(left: 10.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 82.h, vertical: 12.v),
                  decoration: AppDecoration.fillYellowA
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder3),
                  child: Text("msg_waiting_for_task".tr,
                      style: theme.textTheme.titleMedium)),
              SizedBox(height: 1.v)
            ]));
  }

  /// Section Widget
  Widget _buildTaskDetails3(BuildContext context) {
    return CustomElevatedButton(
        width: 85.h,
        text: "lbl_task_details".tr,
        margin: EdgeInsets.only(left: 39.h, top: 1.v));
  }

  /// Section Widget
  Widget _buildNameDoe(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        color: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Container(
            height: 170.v,
            width: 400.h,
            padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.v),
            decoration: AppDecoration.fillPrimary
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Stack(alignment: Alignment.topLeft, children: [
              Padding(
                  padding: EdgeInsets.only(left: 61.h, top: 3.v, right: 193.h),
                  child: _buildDamasKhamis(context,
                      userName: "lbl_damas_khamis".tr,
                      serviceText: "msg_cleaning_service2".tr)),
              CustomImageView(
                  imagePath: ImageConstant.imgDamasImage45x45,
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  radius: BorderRadius.circular(5.h),
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 4.h)),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: Consumer<TaskProvider>(
                                builder: (context, provider, child) {
                              return Padding(
                                  padding: EdgeInsets.only(right: 14.h),
                                  child: CustomRadioButton(
                                      text: "lbl_pending".tr,
                                      value: "lbl_pending".tr,
                                      groupValue: provider.radioGroup3,
                                      onChange: (value) {
                                        provider.changeRadioButton4(value);
                                      }));
                            })),
                        SizedBox(height: 87.v),
                        Container(
                            width: 360.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 142.h, vertical: 12.v),
                            decoration: AppDecoration.fillRed.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder3),
                            child: Text("lbl_cancel".tr,
                                style: CustomTextStyles.titleMediumPrimary))
                      ]))),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      margin:
                          EdgeInsets.only(left: 9.h, top: 51.v, bottom: 51.v),
                      padding:
                          EdgeInsets.symmetric(horizontal: 1.h, vertical: 6.v),
                      decoration: AppDecoration.fillOnError.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgCalendar,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 10.v)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 8.h, top: 10.v, bottom: 10.v),
                            child: Text("lbl_monday_dec_24".tr,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.labelLarge)),
                        CustomImageView(
                            imagePath: ImageConstant.imgClock,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(
                                left: 16.h, top: 10.v, bottom: 10.v)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 8.h, top: 10.v, bottom: 10.v),
                            child: Text("lbl_12_00_13_00".tr,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.labelLarge)),
                        _buildTaskDetails3(context)
                      ])))
            ])));
  }

  /// Section Widget
  Widget _buildWaitingForTaskToStart2(BuildContext context) {
    return CustomElevatedButton(
        height: 44.v,
        text: "msg_waiting_for_task".tr,
        buttonStyle: CustomButtonStyles.fillYellowA,
        buttonTextStyle: theme.textTheme.titleMedium!);
  }

  /// Section Widget
  Widget _buildTaskDetails4(BuildContext context) {
    return CustomElevatedButton(
        width: 85.h,
        text: "lbl_task_details".tr,
        margin: EdgeInsets.only(left: 39.h, top: 1.v));
  }

  /// Section Widget
  Widget _buildNameDoe1(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        color: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Container(
            height: 170.v,
            width: 400.h,
            padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.v),
            decoration: AppDecoration.fillPrimary
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Stack(alignment: Alignment.topLeft, children: [
              Padding(
                  padding: EdgeInsets.only(left: 61.h, top: 3.v, right: 193.h),
                  child: _buildDamasKhamis(context,
                      userName: "lbl_damas_khamis".tr,
                      serviceText: "msg_cleaning_service2".tr)),
              CustomImageView(
                  imagePath: ImageConstant.imgDamasImage45x45,
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  radius: BorderRadius.circular(5.h),
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 4.h)),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: Consumer<TaskProvider>(
                                builder: (context, provider, child) {
                              return Padding(
                                  padding: EdgeInsets.only(right: 18.h),
                                  child: CustomRadioButton(
                                      text: "lbl_started".tr,
                                      value: "lbl_started".tr,
                                      groupValue: provider.radioGroup4,
                                      onChange: (value) {
                                        provider.changeRadioButton5(value);
                                      }));
                            })),
                        SizedBox(height: 87.v),
                        _buildWaitingForTaskToStart2(context)
                      ]))),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      margin:
                          EdgeInsets.only(left: 9.h, top: 51.v, bottom: 51.v),
                      padding:
                          EdgeInsets.symmetric(horizontal: 1.h, vertical: 6.v),
                      decoration: AppDecoration.fillOnError.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgCalendar,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 10.v)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 8.h, top: 10.v, bottom: 10.v),
                            child: Text("lbl_monday_dec_24".tr,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.labelLarge)),
                        CustomImageView(
                            imagePath: ImageConstant.imgClock,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(
                                left: 16.h, top: 10.v, bottom: 10.v)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 8.h, top: 10.v, bottom: 10.v),
                            child: Text("lbl_12_00_13_00".tr,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.labelLarge)),
                        _buildTaskDetails4(context)
                      ])))
            ])));
  }

  /// Section Widget
  Widget _buildDoeNine(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.only(left: 2.h),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Container(
                height: 170.v,
                width: 400.h,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 6.v),
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder10),
                child: Stack(alignment: Alignment.topRight, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: EdgeInsets.only(top: 42.v),
                          child: Selector<TaskProvider, TextEditingController?>(
                              selector: (context, provider) =>
                                  provider.searchController,
                              builder: (context, searchController, child) {
                                return CustomSearchView(
                                    width: 368.h,
                                    controller: searchController,
                                    hintText: "lbl_sinza_mori".tr,
                                    alignment: Alignment.topCenter,
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 30.h, vertical: 16.v),
                                    borderDecoration:
                                        SearchViewStyleHelper.fillOnError,
                                    filled: true,
                                    fillColor: theme.colorScheme.onError);
                              }))),
                  Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 2.v, bottom: 3.v),
                                              child: Text("lbl_your_task".tr,
                                                  style: theme
                                                      .textTheme.titleSmall)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 111.h),
                                              child: Text("lbl".tr,
                                                  style: theme
                                                      .textTheme.titleLarge))
                                        ])),
                                SizedBox(height: 86.v),
                                Padding(
                                    padding: EdgeInsets.only(right: 23.h),
                                    child: Selector<TaskProvider,
                                            TextEditingController?>(
                                        selector: (context, provider) =>
                                            provider.searchController1,
                                        builder: (context, searchController1,
                                            child) {
                                          return CustomSearchView(
                                              controller: searchController1,
                                              hintText: "lbl_x".tr,
                                              hintStyle:
                                                  theme.textTheme.titleLarge!,
                                              contentPadding: EdgeInsets.only(
                                                  top: 5.v,
                                                  right: 25.h,
                                                  bottom: 5.v));
                                        }))
                              ])))
                ]))));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            height: 88.v,
            width: 417.h,
            margin: EdgeInsets.only(bottom: 429.v),
            child: Stack(alignment: Alignment.bottomCenter, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle22,
                  height: 86.v,
                  width: 417.h,
                  alignment: Alignment.center),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding:
                          EdgeInsets.only(left: 18.h, top: 26.v, right: 5.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 5.v),
                                child: Column(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgHome,
                                      height: 30.adaptSize,
                                      width: 30.adaptSize),
                                  SizedBox(height: 6.v),
                                  Text("lbl_home".tr,
                                      style: CustomTextStyles
                                          .titleSmallPoppinsGray700)
                                ])),
                            Spacer(flex: 46),
                            Column(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgTask,
                                  height: 40.v,
                                  width: 50.h),
                              SizedBox(height: 1.v),
                              Text("lbl_task".tr,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles
                                      .titleSmallPoppinsErrorContainer)
                            ]),
                            Spacer(flex: 53),
                            Container(
                                height: 51.v,
                                width: 44.h,
                                margin: EdgeInsets.only(top: 7.v, bottom: 4.v),
                                child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgProfileGray700,
                                          height: 37.v,
                                          width: 43.h,
                                          alignment: Alignment.topCenter),
                                      Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text("lbl_profile".tr,
                                              style: CustomTextStyles
                                                  .labelLargeRobotoGray700))
                                    ]))
                          ])))
            ])));
  }

  /// Common widget
  Widget _buildDamasKhamis(
    BuildContext context, {
    required String userName,
    required String serviceText,
  }) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
              alignment: Alignment.center,
              child: Text(userName,
                  style: theme.textTheme.titleSmall!
                      .copyWith(color: appTheme.black900))),
          SizedBox(height: 4.v),
          Text(serviceText,
              style: CustomTextStyles.labelLargeBlack90013
                  .copyWith(color: appTheme.black900))
        ]);
  }

  /// Common widget
  Widget _buildFortyNine(
    BuildContext context, {
    required String eventDate,
    required String eventTime,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgCalendar,
          height: 16.adaptSize,
          width: 16.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(eventDate,
              style: theme.textTheme.labelLarge!
                  .copyWith(color: theme.colorScheme.onErrorContainer))),
      CustomImageView(
          imagePath: ImageConstant.imgClock,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(left: 16.h)),
      Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(eventTime,
              style: theme.textTheme.labelLarge!
                  .copyWith(color: theme.colorScheme.onErrorContainer)))
    ]);
  }

  /// Common widget
  Widget _buildDown(
    BuildContext context, {
    required String dateText,
    required String timeText,
    required String taskDetailsText,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 6.v),
        decoration: AppDecoration.fillOnError
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          CustomImageView(
              imagePath: ImageConstant.imgCalendar,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 10.v)),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 10.v, bottom: 9.v),
              child: Text(dateText,
                  style: theme.textTheme.labelLarge!
                      .copyWith(color: theme.colorScheme.onErrorContainer))),
          CustomImageView(
              imagePath: ImageConstant.imgClock,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(left: 16.h, top: 10.v, bottom: 10.v)),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 10.v, bottom: 10.v),
              child: Text(timeText,
                  style: theme.textTheme.labelLarge!
                      .copyWith(color: theme.colorScheme.onErrorContainer))),
          Spacer(),
          Container(
              margin: EdgeInsets.only(top: 1.v, right: 6.h),
              padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 8.v),
              decoration: AppDecoration.fillErrorContainer,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 2.v),
                    Text(taskDetailsText,
                        style: CustomTextStyles.labelLargePrimary
                            .copyWith(color: theme.colorScheme.primary))
                  ]))
        ]));
  }

  /// Navigates to the previous screen.
  onTapImage(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the mapScreen when the action is triggered.
  onTapTrack(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mapScreen,
    );
  }
}
