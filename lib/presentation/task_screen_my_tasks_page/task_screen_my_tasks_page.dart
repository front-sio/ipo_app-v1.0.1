import '../task_screen_my_tasks_page/widgets/userprofilelist_item_widget.dart';
import 'models/task_screen_my_tasks_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';
import 'provider/task_screen_my_tasks_provider.dart';

// ignore_for_file: must_be_immutable
class TaskScreenMyTasksPage extends StatefulWidget {
  const TaskScreenMyTasksPage({Key? key})
      : super(
          key: key,
        );

  @override
  TaskScreenMyTasksPageState createState() => TaskScreenMyTasksPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskScreenMyTasksProvider(),
      child: TaskScreenMyTasksPage(),
    );
  }
}

class TaskScreenMyTasksPageState extends State<TaskScreenMyTasksPage>
    with AutomaticKeepAliveClientMixin<TaskScreenMyTasksPage> {
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
          child: Column(
            children: [
              SizedBox(height: 32.v),
              _buildUserProfileList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Consumer<TaskScreenMyTasksProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 17.v,
                );
              },
              itemCount: provider
                  .taskScreenMyTasksModelObj.userprofilelistItemList.length,
              itemBuilder: (context, index) {
                UserprofilelistItemModel model = provider
                    .taskScreenMyTasksModelObj.userprofilelistItemList[index];
                return UserprofilelistItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
