import 'models/detail_my_posts_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';
import 'package:ipo_app/presentation/detail_my_posts_page/detail_my_posts_page.dart';
import 'package:ipo_app/presentation/task_screen_my_tasks_page/task_screen_my_tasks_page.dart';
import 'package:ipo_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:ipo_app/widgets/app_bar/appbar_title.dart';
import 'package:ipo_app/widgets/app_bar/custom_app_bar.dart';
import 'package:ipo_app/widgets/custom_icon_button.dart';
import 'package:ipo_app/widgets/custom_outlined_button.dart';
import 'provider/detail_my_posts_tab_container_provider.dart';

class DetailMyPostsTabContainerScreen extends StatefulWidget {
  const DetailMyPostsTabContainerScreen({Key? key}) : super(key: key);

  @override
  DetailMyPostsTabContainerScreenState createState() =>
      DetailMyPostsTabContainerScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DetailMyPostsTabContainerProvider(),
        child: DetailMyPostsTabContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class DetailMyPostsTabContainerScreenState
    extends State<DetailMyPostsTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildProfile(context),
                  SizedBox(height: 12.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 301.h,
                          margin: EdgeInsets.only(left: 34.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_about".tr,
                                    style: CustomTextStyles.titleSmallff000000),
                                TextSpan(
                                    text: "msg_he_is_a_laundress".tr,
                                    style: CustomTextStyles.titleSmallff69778e)
                              ]),
                              textAlign: TextAlign.left))),
                  SizedBox(height: 28.v),
                  CustomOutlinedButton(
                      text: "msg_confirm_provider".tr,
                      margin: EdgeInsets.only(left: 19.h, right: 29.h),
                      onPressed: () {
                        onTapConfirmProvider(context);
                      }),
                  SizedBox(height: 26.v),
                  _buildTabview(context),
                  SizedBox(
                      height: 502.v,
                      child: TabBarView(
                          controller: tabviewController,
                          children: [
                            DetailMyPostsPage.builder(context),
                            TaskScreenMyTasksPage.builder(context)
                          ]))
                ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 31.h, top: 18.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_details".tr),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildProfile(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 9.h),
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.outlineIndigoC
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder18),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          CustomImageView(
              imagePath: ImageConstant.imgIcon,
              height: 88.adaptSize,
              width: 88.adaptSize,
              radius: BorderRadius.circular(5.h)),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 8.v, bottom: 8.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_john_doe".tr,
                        style: CustomTextStyles.titleMediumOnErrorContainer),
                    SizedBox(height: 7.v),
                    Text("lbl_cleaner".tr,
                        style: CustomTextStyles.bodyMediumWorkSansOnPrimary),
                    SizedBox(height: 7.v),
                    Row(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgUMapMarker,
                          height: 18.adaptSize,
                          width: 18.adaptSize),
                      Padding(
                          padding: EdgeInsets.only(left: 8.h, top: 2.v),
                          child: Text("msg_zakhem_mbagala".tr,
                              style: CustomTextStyles.bodySmallPoppinsLight)),
                      Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: CustomIconButton(
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              padding: EdgeInsets.all(1.h),
                              decoration: IconButtonStyleHelper.fillOnError,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgSignal))),
                      Padding(
                          padding: EdgeInsets.only(left: 8.h, bottom: 4.v),
                          child: Text("lbl_4_5".tr,
                              style:
                                  CustomTextStyles.labelLargeWorkSansOnPrimary))
                    ])
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 36.v,
        width: 382.h,
        decoration: BoxDecoration(
            color: appTheme.blueGray10001,
            borderRadius: BorderRadius.circular(5.h),
            border: Border.all(color: appTheme.indigo50, width: 1.h)),
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: theme.colorScheme.primary,
            labelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600),
            unselectedLabelColor: appTheme.black900,
            unselectedLabelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600),
            indicatorPadding: EdgeInsets.all(1.0.h),
            indicator: BoxDecoration(
                color: theme.colorScheme.errorContainer,
                borderRadius: BorderRadius.circular(5.h),
                border: Border.all(color: appTheme.indigo50, width: 1.h)),
            tabs: [
              Tab(child: Text("lbl_my_posts".tr)),
              Tab(child: Text("lbl_my_task".tr))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the taskScreen when the action is triggered.
  onTapConfirmProvider(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.taskScreen,
    );
  }
}
