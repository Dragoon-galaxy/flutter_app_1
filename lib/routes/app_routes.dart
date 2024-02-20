import 'package:flutter/material.dart';
import '../presentation/app_starting_screen/app_starting_screen.dart';
import '../presentation/entry_screen/entry_screen.dart';
import '../presentation/customer_login_screen/customer_login_screen.dart';
import '../presentation/customer_registration_screen/customer_registration_screen.dart';
import '../presentation/customer_homescreen_container_screen/customer_homescreen_container_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String appStartingScreen = '/app_starting_screen';

  static const String entryScreen = '/entry_screen';

  static const String customerLoginScreen = '/customer_login_screen';

  static const String customerRegistrationScreen =
      '/customer_registration_screen';

  static const String customerHomescreenPage = '/customer_homescreen_page';

  static const String customerHomescreenContainerScreen =
      '/customer_homescreen_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        appStartingScreen: AppStartingScreen.builder,
        entryScreen: EntryScreen.builder,
        customerLoginScreen: CustomerLoginScreen.builder,
        customerRegistrationScreen: CustomerRegistrationScreen.builder,
        customerHomescreenContainerScreen:
            CustomerHomescreenContainerScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: AppStartingScreen.builder
      };
}
