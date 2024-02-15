import 'package:flutter/material.dart';
import 'package:ipo_app/presentation/login_screen/login_screen.dart';
import 'package:ipo_app/presentation/splash_screen/splash_screen.dart';
import 'package:ipo_app/presentation/login_otp_screen/login_otp_screen.dart';
import 'package:ipo_app/presentation/home_screen_container_screen/home_screen_container_screen.dart';
import 'package:ipo_app/presentation/detail_my_posts_tab_container_screen/detail_my_posts_tab_container_screen.dart';
import 'package:ipo_app/presentation/profile_screen/profile_screen.dart';
import 'package:ipo_app/presentation/map_screen/map_screen.dart';
import 'package:ipo_app/presentation/massage_screen/massage_screen.dart';
import 'package:ipo_app/presentation/audio_call_screen/audio_call_screen.dart';
import 'package:ipo_app/presentation/profile_edit_screen/profile_edit_screen.dart';
import 'package:ipo_app/presentation/task_screen/task_screen.dart';
import 'package:ipo_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String splashScreen = '/splash_screen';

  static const String loginOtpScreen = '/login_otp_screen';

  static const String homeScreenPage = '/home_screen_page';

  static const String homeScreenTabContainerPage =
      '/home_screen_tab_container_page';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String detailMyPostsPage = '/detail_my_posts_page';

  static const String detailMyPostsTabContainerScreen =
      '/detail_my_posts_tab_container_screen';

  static const String taskScreenMyTasksPage = '/task_screen_my_tasks_page';

  static const String profileScreen = '/profile_screen';

  static const String mapScreen = '/map_screen';

  static const String massageScreen = '/massage_screen';

  static const String audioCallScreen = '/audio_call_screen';

  static const String profileEditScreen = '/profile_edit_screen';

  static const String taskScreen = '/task_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        loginScreen: LoginScreen.builder,
        splashScreen: SplashScreen.builder,
        loginOtpScreen: LoginOtpScreen.builder,
        homeScreenContainerScreen: HomeScreenContainerScreen.builder,
        detailMyPostsTabContainerScreen:
            DetailMyPostsTabContainerScreen.builder,
        profileScreen: ProfileScreen.builder,
        mapScreen: MapScreen.builder,
        massageScreen: MassageScreen.builder,
        audioCallScreen: AudioCallScreen.builder,
        profileEditScreen: ProfileEditScreen.builder,
        taskScreen: TaskScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: LoginScreen.builder
      };
}
