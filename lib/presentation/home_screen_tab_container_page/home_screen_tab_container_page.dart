import 'models/home_screen_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';
import 'package:ipo_app/presentation/home_screen_page/home_screen_page.dart';
import 'package:ipo_app/widgets/custom_icon_button.dart';
import 'package:ipo_app/widgets/custom_search_view.dart';
import 'provider/home_screen_tab_container_provider.dart';

// ignore_for_file: must_be_immutable
class HomeScreenTabContainerPage extends StatefulWidget {
  const HomeScreenTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeScreenTabContainerPageState createState() =>
      HomeScreenTabContainerPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeScreenTabContainerProvider(),
      child: HomeScreenTabContainerPage(),
    );
  }
}

class HomeScreenTabContainerPageState extends State<HomeScreenTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimary,
          child: Column(
            children: [
              SizedBox(height: 19.v),
              _buildTopbar(context),
              SizedBox(height: 6.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 38.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLocation,
                        height: 35.v,
                        width: 37.h,
                        radius: BorderRadius.circular(
                          18.h,
                        ),
                        margin: EdgeInsets.symmetric(vertical: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 26.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "msg_my_current_location".tr,
                              style: CustomTextStyles.titleSmallPoppins_1,
                            ),
                            Text(
                              "msg_35_oak_ave_san".tr,
                              style: CustomTextStyles.bodySmallPoppinsGray60001,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 38.h,
                  right: 43.h,
                ),
                child: Selector<HomeScreenTabContainerProvider,
                    TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.searchController,
                  builder: (context, searchController, child) {
                    return CustomSearchView(
                      controller: searchController,
                      hintText: "lbl_choose_service".tr,
                    );
                  },
                ),
              ),
              SizedBox(height: 12.v),
              _buildTabview(context),
              Expanded(
                child: SizedBox(
                  height: 646.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      HomeScreenPage.builder(context),
                      HomeScreenPage.builder(context),
                      HomeScreenPage.builder(context),
                      HomeScreenPage.builder(context),
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
  Widget _buildTopbar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 37.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "msg_find_desire_provider".tr,
              style: CustomTextStyles.titleMediumPoppinsMedium,
            ),
          ),
          CustomIconButton(
            height: 30.v,
            width: 31.h,
            padding: EdgeInsets.all(6.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgVector,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 42.v,
      width: 352.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.primary,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.black900,
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.errorContainer,
          borderRadius: BorderRadius.circular(
            5.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_all".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_individual".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_group".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_company".tr,
            ),
          ),
        ],
      ),
    );
  }
}
