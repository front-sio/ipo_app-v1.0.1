import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';
import 'package:ipo_app/presentation/detail_my_posts_page/models/detail_my_posts_model.dart';
import '../models/userprofile_item_model.dart';
import '../models/userprofile1_item_model.dart';

/// A provider class for the DetailMyPostsPage.
///
/// This provider manages the state of the DetailMyPostsPage, including the
/// current detailMyPostsModelObj

// ignore_for_file: must_be_immutable
class DetailMyPostsProvider extends ChangeNotifier {
  DetailMyPostsModel detailMyPostsModelObj = DetailMyPostsModel();

  int sliderIndex = 0;

  int sliderIndex1 = 0;

  @override
  void dispose() {
    super.dispose();
  }
}
