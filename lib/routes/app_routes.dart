import 'package:flutter/material.dart';

import '../ui/app_navigation_screen/app_navigation_screen.dart';
import '../ui/home/home__screen.dart';
import '../ui/intro_screen/intro_screen.dart';
import '../ui/login_screen/login_screen.dart';
import '../ui/sign_up_screen/sign_up_screen.dart';
import '../ui/splash_screen/starting_splash_screen.dart';
import '../ui/profile_screen/profile_screen.dart';



class AppRoutes {
  static const String activityScreen = '/activity_screen';
  static const String estimateScreen = '/estimate_screen';

  static const String introScreen = '/intro_screen';

  static const String loginScreen = '/login_screen';

  static const String splashScreen = '/splash_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String registerScreen = '/register_screen';

  static const String homeScreen = '/home_screen';

  static const String profileScreen = '/profile_screen';


  static Map<String, WidgetBuilder> routes = {
    introScreen: (context) => IntroScreen(),
    loginScreen: (context) => LoginScreen(),
    splashScreen: (context) => SplashScreenPage(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    registerScreen: (context) => SignUpScreen(),
    homeScreen: (context) => HomeScreen(),
    profileScreen: (context) => ProfileScreen(),


  };
}
