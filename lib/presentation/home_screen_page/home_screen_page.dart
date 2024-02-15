import '../home_screen_page/widgets/providercard_item_widget.dart';
import 'models/home_screen_model.dart';
import 'models/providercard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';
import 'provider/home_screen_provider.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  HomeScreenPageState createState() => HomeScreenPageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeScreenProvider(), child: HomeScreenPage());
  }
}

class HomeScreenPageState extends State<HomeScreenPage>
    with AutomaticKeepAliveClientMixin<HomeScreenPage> {
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
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillPrimary,
                child: Column(children: [
                  SizedBox(height: 12.v),
                  _buildProviderCard(context)
                ]))));
  }

  /// Section Widget
  Widget _buildProviderCard(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 9.h),
            child: Consumer<HomeScreenProvider>(
                builder: (context, provider, child) {
              return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 283.v,
                      crossAxisCount: 2,
                      mainAxisSpacing: 8.h,
                      crossAxisSpacing: 8.h),
                  physics: BouncingScrollPhysics(),
                  itemCount:
                      provider.homeScreenModelObj.providercardItemList.length,
                  itemBuilder: (context, index) {
                    ProvidercardItemModel model =
                        provider.homeScreenModelObj.providercardItemList[index];
                    return ProvidercardItemWidget(model, onTapBookMeButton: () {
                      onTapBookMeButton(context);
                    });
                  });
            })));
  }

  /// Navigates to the detailMyPostsTabContainerScreen when the action is triggered.
  onTapBookMeButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailMyPostsTabContainerScreen,
    );
  }
}
