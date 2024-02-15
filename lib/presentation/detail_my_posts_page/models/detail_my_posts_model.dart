import 'userprofile_item_model.dart';
import 'userprofile1_item_model.dart';
import '../../../core/app_export.dart';

class DetailMyPostsModel {
  List<UserprofileItemModel> userprofileItemList =
      List.generate(1, (index) => UserprofileItemModel());

  List<Userprofile1ItemModel> userprofile1ItemList =
      List.generate(1, (index) => Userprofile1ItemModel());
}
