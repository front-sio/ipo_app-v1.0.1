import '../detail_my_posts_page/widgets/userprofile1_item_widget.dart';
import '../detail_my_posts_page/widgets/userprofile_item_widget.dart';
import 'models/detail_my_posts_model.dart';
import 'models/userprofile1_item_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';
import 'package:ipo_app/widgets/custom_rating_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'provider/detail_my_posts_provider.dart';

// ignore_for_file: must_be_immutable
class DetailMyPostsPage extends StatefulWidget {
  const DetailMyPostsPage({Key? key})
      : super(
          key: key,
        );

  @override
  DetailMyPostsPageState createState() => DetailMyPostsPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DetailMyPostsProvider(),
      child: DetailMyPostsPage(),
    );
  }
}

class DetailMyPostsPageState extends State<DetailMyPostsPage>
    with AutomaticKeepAliveClientMixin<DetailMyPostsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 18.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13.h),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 13.h,
                          vertical: 19.v,
                        ),
                        decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder18,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildPostTop(context),
                            SizedBox(height: 5.v),
                            _buildSixStack(
                              context,
                              photoNumber: "lbl_1_3".tr,
                            ),
                            SizedBox(height: 34.v),
                            _buildUserProfileSlider(context),
                            SizedBox(height: 22.v),
                          ],
                        ),
                      ),
                      SizedBox(height: 32.v),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 13.h,
                          vertical: 19.v,
                        ),
                        decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder18,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildOvalRow(context),
                            SizedBox(height: 5.v),
                            _buildSixStack(
                              context,
                              photoNumber: "lbl_1_3".tr,
                            ),
                            SizedBox(height: 34.v),
                            _buildSeventySixStack(context),
                            SizedBox(height: 22.v),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPostTop(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineGray,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgOval,
            height: 32.adaptSize,
            width: 32.adaptSize,
            radius: BorderRadius.circular(
              16.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_john_doe".tr,
                  style: CustomTextStyles.labelLargeRobotoBlack900Bold,
                ),
                SizedBox(height: 3.v),
                Text(
                  "msg_clening_and_washing".tr,
                  style: CustomTextStyles.labelMediumRobotoBlack900,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Column(
              children: [
                CustomRatingBar(
                  initialRating: 4,
                  itemSize: 12,
                ),
                SizedBox(height: 3.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "lbl_4_5_ratting".tr,
                    style: CustomTextStyles.labelMediumRobotoBlack900,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMoreIcon,
            height: 14.v,
            width: 3.h,
            margin: EdgeInsets.fromLTRB(9.h, 9.v, 10.h, 9.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileSlider(BuildContext context) {
    return SizedBox(
      height: 95.v,
      width: 367.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Consumer<DetailMyPostsProvider>(
            builder: (context, provider, child) {
              return CarouselSlider.builder(
                options: CarouselOptions(
                  height: 95.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (
                    index,
                    reason,
                  ) {
                    provider.sliderIndex = index;
                  },
                ),
                itemCount:
                    provider.detailMyPostsModelObj.userprofileItemList.length,
                itemBuilder: (context, index, realIndex) {
                  UserprofileItemModel model =
                      provider.detailMyPostsModelObj.userprofileItemList[index];
                  return UserprofileItemWidget(
                    model,
                  );
                },
              );
            },
          ),
          Align(
            alignment: Alignment.topRight,
            child: Consumer<DetailMyPostsProvider>(
              builder: (context, provider, child) {
                return Container(
                  height: 10.v,
                  margin: EdgeInsets.only(
                    top: 13.v,
                    right: 151.h,
                  ),
                  child: AnimatedSmoothIndicator(
                    activeIndex: provider.sliderIndex,
                    count: provider
                        .detailMyPostsModelObj.userprofileItemList.length,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                      spacing: 5,
                      activeDotColor: theme.colorScheme.errorContainer,
                      dotColor: appTheme.black900.withOpacity(0.15),
                      activeDotScale: 1.25,
                      dotHeight: 8.v,
                      dotWidth: 8.h,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOvalRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineGray,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgOval,
            height: 32.adaptSize,
            width: 32.adaptSize,
            radius: BorderRadius.circular(
              16.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              bottom: 1.v,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl_john_doe".tr,
                      style: CustomTextStyles.labelLargeRobotoBlack900Bold,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.v),
                      child: CustomRatingBar(
                        initialRating: 4,
                        itemSize: 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Text(
                        "msg_clening_and_washing".tr,
                        style: CustomTextStyles.labelMediumRobotoBlack900,
                      ),
                    ),
                    Text(
                      "lbl_4_5_ratting".tr,
                      style: CustomTextStyles.labelMediumRobotoBlack900,
                    ),
                  ],
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMoreIcon,
            height: 14.v,
            width: 3.h,
            margin: EdgeInsets.only(
              left: 9.h,
              top: 9.v,
              bottom: 10.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventySixStack(BuildContext context) {
    return SizedBox(
      height: 95.v,
      width: 367.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Consumer<DetailMyPostsProvider>(
            builder: (context, provider, child) {
              return CarouselSlider.builder(
                options: CarouselOptions(
                  height: 95.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (
                    index,
                    reason,
                  ) {
                    provider.sliderIndex1 = index;
                  },
                ),
                itemCount:
                    provider.detailMyPostsModelObj.userprofile1ItemList.length,
                itemBuilder: (context, index, realIndex) {
                  Userprofile1ItemModel model = provider
                      .detailMyPostsModelObj.userprofile1ItemList[index];
                  return Userprofile1ItemWidget(
                    model,
                  );
                },
              );
            },
          ),
          Align(
            alignment: Alignment.topRight,
            child: Consumer<DetailMyPostsProvider>(
              builder: (context, provider, child) {
                return Container(
                  height: 10.v,
                  margin: EdgeInsets.only(
                    top: 13.v,
                    right: 151.h,
                  ),
                  child: AnimatedSmoothIndicator(
                    activeIndex: provider.sliderIndex1,
                    count: provider
                        .detailMyPostsModelObj.userprofile1ItemList.length,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                      spacing: 5,
                      activeDotColor: theme.colorScheme.errorContainer,
                      dotColor: appTheme.black900.withOpacity(0.15),
                      activeDotScale: 1.25,
                      dotHeight: 8.v,
                      dotWidth: 8.h,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSixStack(
    BuildContext context, {
    required String photoNumber,
  }) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.circleBorder18,
      ),
      child: Container(
        height: 375.adaptSize,
        width: 375.adaptSize,
        decoration: AppDecoration.outlineBlack900.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder18,
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage,
              height: 375.adaptSize,
              width: 375.adaptSize,
              radius: BorderRadius.circular(
                20.h,
              ),
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 26.adaptSize,
                margin: EdgeInsets.only(
                  top: 12.v,
                  right: 21.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 4.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.fillErrorContainer.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder13,
                ),
                child: Text(
                  photoNumber,
                  style: CustomTextStyles.bodySmallSFProTextGray50.copyWith(
                    color: appTheme.gray50,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
