import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';
import 'package:ipo_app/presentation/detail_my_posts_tab_container_screen/models/detail_my_posts_tab_container_model.dart';

/// A provider class for the DetailMyPostsTabContainerScreen.
///
/// This provider manages the state of the DetailMyPostsTabContainerScreen, including the
/// current detailMyPostsTabContainerModelObj

// ignore_for_file: must_be_immutable
class DetailMyPostsTabContainerProvider extends ChangeNotifier {
  DetailMyPostsTabContainerModel detailMyPostsTabContainerModelObj =
      DetailMyPostsTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
