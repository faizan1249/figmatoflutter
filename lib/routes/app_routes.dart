import 'package:flutter/material.dart';
import 'package:faizan_s_application1/presentation/personal_profile_screen/personal_profile_screen.dart';
import 'package:faizan_s_application1/presentation/personal_profile_one_screen/personal_profile_one_screen.dart';
import 'package:faizan_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:faizan_s_application1/presentation/welcome_page_two_screen/welcome_page_two_screen.dart';
import 'package:faizan_s_application1/presentation/reg_page_screen/reg_page_screen.dart';
import 'package:faizan_s_application1/presentation/login_screen/login_screen.dart';
import 'package:faizan_s_application1/presentation/welcome_page_screen/welcome_page_screen.dart';
import 'package:faizan_s_application1/presentation/edit_screen/edit_screen.dart';
import 'package:faizan_s_application1/presentation/add_screen/add_screen.dart';
import 'package:faizan_s_application1/presentation/add_one_screen/add_one_screen.dart';
import 'package:faizan_s_application1/presentation/verify_screen/verify_screen.dart';
import 'package:faizan_s_application1/presentation/welcome_page_one_screen/welcome_page_one_screen.dart';
import 'package:faizan_s_application1/presentation/matched_screen/matched_screen.dart';
import 'package:faizan_s_application1/presentation/not_matched_screen/not_matched_screen.dart';
import 'package:faizan_s_application1/presentation/otp_screen/otp_screen.dart';
import 'package:faizan_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String personalProfileScreen = '/personal_profile_screen';

  static const String personalProfileOneScreen = '/personal_profile_one_screen';

  static const String splashScreen = '/splash_screen';

  static const String welcomePageTwoScreen = '/welcome_page_two_screen';

  static const String regPageScreen = '/reg_page_screen';

  static const String loginScreen = '/login_screen';

  static const String welcomePageScreen = '/welcome_page_screen';

  static const String editScreen = '/edit_screen';

  static const String addScreen = '/add_screen';

  static const String addOneScreen = '/add_one_screen';

  static const String verifyScreen = '/verify_screen';

  static const String welcomePageOneScreen = '/welcome_page_one_screen';

  static const String matchedScreen = '/matched_screen';

  static const String notMatchedScreen = '/not_matched_screen';

  static const String otpScreen = '/otp_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    personalProfileScreen: (context) => PersonalProfileScreen(),
    personalProfileOneScreen: (context) => PersonalProfileOneScreen(),
    splashScreen: (context) => SplashScreen(),
    welcomePageTwoScreen: (context) => WelcomePageTwoScreen(),
    regPageScreen: (context) => RegPageScreen(),
    loginScreen: (context) => LoginScreen(),
    welcomePageScreen: (context) => WelcomePageScreen(),
    editScreen: (context) => EditScreen(),
    addScreen: (context) => AddScreen(),
    addOneScreen: (context) => AddOneScreen(),
    verifyScreen: (context) => VerifyScreen(),
    welcomePageOneScreen: (context) => WelcomePageOneScreen(),
    matchedScreen: (context) => MatchedScreen(),
    notMatchedScreen: (context) => NotMatchedScreen(),
    otpScreen: (context) => OtpScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
