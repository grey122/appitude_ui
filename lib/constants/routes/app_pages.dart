// ignore: avoid_classes_with_only_static_members
import 'package:appitude_ui/bottom_nav_bar.dart';
import 'package:appitude_ui/explore.dart';
import 'package:appitude_ui/upload_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../main.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      participatesInRootNavigator: true,
      preventDuplicates: true,
      name: Routes.INTITIAL,
      page: () => SplashScreen(),
      title: null,
      children: [
        GetPage(
          name: Routes.HOME,
          page: () => ExploreScr(),
          preventDuplicates: true,

          // binding: DashboardBinding(),
        ),
        GetPage(
          name: Routes.EXPLORE,
          page: () => ExploreScr(),
          title: 'Explore',
          transition: Transition.native,
        ),
        GetPage(
          name: Routes.GALLERY,
          page: () => ExploreScr(),
          title: 'Gallery',
          // transition: Transition.zoom,
          // binding: ProductsBinding(),
        ),
        GetPage(
          name: Routes.ACTIVITY,
          page: () => ExploreScr(),
          title: 'Activity',
          // transition: Transition.zoom,
          // binding: ProductsBinding(),
        ),
        GetPage(
          name: Routes.USER_PROFILE,
          page: () => ExploreScr(),
          title: 'User profile',

          // transition: Transition.zoom,
          // binding: ProductsBinding(),
        ),
      ],
    ),
  ];
}
