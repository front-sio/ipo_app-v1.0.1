import 'dart:async';
import 'models/map_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ipo_app/core/app_export.dart';
import 'package:ipo_app/widgets/custom_elevated_button.dart';
import 'provider/map_provider.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  MapScreenState createState() => MapScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => MapProvider(), child: MapScreen());
  }
}

// ignore_for_file: must_be_immutable
class MapScreenState extends State<MapScreen> {
  Completer<GoogleMapController> googleMapController = Completer();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: SizeUtils.height,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  height: SizeUtils.height,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        _buildGoogleMap(context),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgArrowLeftBlack900,
                                            height: 25.v,
                                            width: 10.h,
                                            alignment: Alignment.topLeft,
                                            margin: EdgeInsets.only(
                                                left: 31.h, top: 46.v),
                                            onTap: () {
                                              onTapImgArrowLeft(context);
                                            })
                                      ]))),
                          _buildBottomSheet(context)
                        ]))))));
  }

  /// Section Widget
  Widget _buildGoogleMap(BuildContext context) {
    return SizedBox(
        height: SizeUtils.height,
        width: double.maxFinite,
        child: GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
                target: LatLng(37.43296265331129, -122.08832357078792),
                zoom: 14.4746),
            onMapCreated: (GoogleMapController controller) {
              googleMapController.complete(controller);
            },
            zoomControlsEnabled: false,
            zoomGesturesEnabled: false,
            myLocationButtonEnabled: false,
            myLocationEnabled: false));
  }

  /// Section Widget
  Widget _buildBottomSheet(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.all(22.h),
            decoration:
                BoxDecoration(borderRadius: BorderRadiusStyle.customBorderTL15),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CustomElevatedButton(
                  height: 65.v,
                  text: "lbl_contacts".tr,
                  margin: EdgeInsets.only(left: 1.h, right: 5.h),
                  buttonStyle: CustomButtonStyles.outlineBlack,
                  buttonTextStyle: CustomTextStyles.titleMediumPoppins),
              SizedBox(height: 31.v),
              Padding(
                  padding: EdgeInsets.only(right: 2.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 65.v,
                            width: 190.h,
                            padding: EdgeInsets.symmetric(vertical: 7.v),
                            decoration: AppDecoration.outlineBlack9002.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL10),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgCall50x50,
                                height: 50.adaptSize,
                                width: 50.adaptSize,
                                alignment: Alignment.center)),
                        Container(
                            height: 65.v,
                            width: 190.h,
                            padding: EdgeInsets.symmetric(vertical: 7.v),
                            decoration: AppDecoration.outlineBlack9002.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderLR10),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgMessage,
                                height: 50.adaptSize,
                                width: 50.adaptSize,
                                alignment: Alignment.center))
                      ])),
              SizedBox(height: 46.v)
            ])));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
