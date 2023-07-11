import 'package:flutter/material.dart';
import 'package:groomely_seller/core/app_export.dart';
import 'package:groomely_seller/feature/booking/presentation/booking_history_screen.dart';
import 'package:groomely_seller/feature/dashboard_screen/presentation/dashboard_screen.dart';
import 'package:groomely_seller/feature/service/manage_service/presentation/manage_services_container_page.dart';
import 'package:groomely_seller/feature/profile/presentation/profile_screen.dart';
import 'package:groomely_seller/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class ManageServicesContainer1Screen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.dashboardScreen,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.dashboardScreen;
      case BottomBarEnum.Manageservice:
        return AppRoutes.manageServicesContainerPage;
      case BottomBarEnum.Bookinghistory:
        return AppRoutes.bookingHistoryScreen;
      case BottomBarEnum.Profile:
        return AppRoutes.userProfileScreen;
      default:
        return "/";
    }
  }
  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.manageServicesContainerPage:
        return ManageServicesContainerPage();
       case AppRoutes.dashboardScreen:
       return DashboardScreen();
       case AppRoutes.bookingHistoryScreen:
       return BookingHistoryScreen();
       case AppRoutes.userProfileScreen:
       return UserProfileScreen();
      default:
        return DefaultWidget();
    }
  }
}
