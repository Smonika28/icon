import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groomely_seller/feature/booking/bloc/booking_history_bloc.dart';
import 'package:groomely_seller/feature/dashboard_screen/bloc/home_view_bloc.dart';
import 'package:groomely_seller/feature/login/bloc/seller_login_bloc.dart';
import 'package:groomely_seller/feature/onboarding/presentation/splash_screen/splash_screen.dart';
import 'package:groomely_seller/feature/profile/bloc/user_profile_bloc.dart';
import 'package:groomely_seller/feature/service/add_service_screen/bloc/fetch_all_service_bloc.dart';
import 'package:groomely_seller/feature/service/manage_service/bloc/manage_service_bloc.dart';
import 'package:groomely_seller/routes/app_routes.dart';
import 'feature/signup/bloc/seller_signup_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider<SellerLoginBloc>(create: (context) => SellerLoginBloc()),
        BlocProvider<SellerSignupBloc>(create: (context) => SellerSignupBloc()),
        BlocProvider<ManageServiceBloc>(
            create: (context) => ManageServiceBloc()),
        BlocProvider<BookingHistoryBloc>(
            create: (context) => BookingHistoryBloc()),
        BlocProvider<FetchAllServiceBloc>(
            create: (context) => FetchAllServiceBloc()),
        BlocProvider<HomeViewBloc>(create: (context) => HomeViewBloc()),
        BlocProvider<UserProfileBloc>(create: (context) => UserProfileBloc()),
        BlocProvider<FetchAllFieldBloc>(
            create: (context) => FetchAllFieldBloc())
      ],
      child: MaterialApp(
        theme: ThemeData(
            visualDensity: VisualDensity.standard, useMaterial3: true),
        title: 'Groomely',
        debugShowCheckedModeBanner: false,

        // home: const LoginScreen(),
        home: SplashScreen(),

        // initialRoute: AppRoutes.SplashScreen2(),
        // routes: AppRoutes.routes,
        // home: MyTest(),
      ),
    );
  }
}
