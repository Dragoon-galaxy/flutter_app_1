import 'package:flutter/material.dart';
import 'package:dragoon_galaxy_s_application3/core/app_export.dart';
import 'package:dragoon_galaxy_s_application3/presentation/customer_homescreen_page/customer_homescreen_page.dart';
import 'package:dragoon_galaxy_s_application3/widgets/custom_bottom_bar.dart';
import 'models/customer_homescreen_container_model.dart';
import 'provider/customer_homescreen_container_provider.dart';

class CustomerHomescreenContainerScreen extends StatefulWidget {
  const CustomerHomescreenContainerScreen({Key? key}) : super(key: key);

  @override
  CustomerHomescreenContainerScreenState createState() =>
      CustomerHomescreenContainerScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CustomerHomescreenContainerProvider(),
        child: CustomerHomescreenContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class CustomerHomescreenContainerScreenState
    extends State<CustomerHomescreenContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.customerHomescreenPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(context, routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.customerHomescreenPage;
      case BottomBarEnum.Explore:
        return "/";
      case BottomBarEnum.Trips:
        return "/";
      case BottomBarEnum.Account:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.customerHomescreenPage:
        return CustomerHomescreenPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
