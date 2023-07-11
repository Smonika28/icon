import 'package:flutter/material.dart';
import 'package:groomely_seller/feature/login/presentation/login_screen.dart';
import 'package:groomely_seller/feature/onboarding/presentation/splash_screen/splash_screen.dart';
import 'package:groomely_seller/feature/onboarding/presentation/welcome_screen/welcome_screen.dart';
import 'package:groomely_seller/feature/profile/presentation/profile_screen.dart';
import 'package:groomely_seller/presentation/signup_screen/signup_screen.dart';
import 'package:groomely_seller/feature/dashboard_screen/presentation/dashboard_screen.dart';
import 'package:groomely_seller/presentation/manage_services_container1_screen/manage_services_container1_screen.dart';
// import 'package:groomely_seller/presentation/service_details_screen/service_details_screen.dart';
import 'package:groomely_seller/presentation/edit_details_screen/edit_details_screen.dart';
import 'package:groomely_seller/feature/service/add_service_screen/presentation/add_service_screen.dart';
import 'package:groomely_seller/feature/booking/presentation/booking_history_screen.dart';
import '../feature/notification/presentation/notification.dart';



class AppRoutes {
  static const String splashScreen = '/splash_screen';
  static const String welcomeScreen = '/welcome_screen';
  static const String loginScreen = '/login_screen';
  static const String signupScreen = '/signup_screen';
  static const String dashboardScreen = '/dashboard_screen';
  static const String manageServicesContainerPage =
      '/manage_services_container_page';
  static const String manageServicesContainer1Screen =
      '/manage_services_container1_screen';
  static const String serviceDetailsScreen = '/service_details_screen';

  static const String editDetailsScreen = '/edit_details_screen';

  static const String addServiceScreen = '/add_service_screen';

  static const String bookingHistoryScreen = '/booking_history_screen';

  static const String bookingDetailsScreen = '/booking_details_screen';

  static const String bookingHistoryOneScreen = '/booking_history_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String userProfileScreen  = '/user_profile_screen';

  static const String notificatonScreen = '/notification_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    welcomeScreen: (context) => WelcomeScreen(),
    loginScreen: (context) => LoginScreen(),
    signupScreen: (context) => SignupScreen(),
    dashboardScreen: (context) => DashboardScreen(),
    notificatonScreen: (context) => NotificatonScreen(),
    manageServicesContainer1Screen: (context) =>
        ManageServicesContainer1Screen(),
    // serviceDetailsScreen: (context) => ServiceDetailsScreen(),
    editDetailsScreen: (context) => EditDetailsScreen(),
    addServiceScreen: (context) => AddServiceScreen(),
    bookingHistoryScreen: (context) => BookingHistoryScreen(),
    // bookingDetailsScreen: (context) => BookingDetailsScreen(),
    userProfileScreen :(context) => UserProfileScreen()
  };
}
