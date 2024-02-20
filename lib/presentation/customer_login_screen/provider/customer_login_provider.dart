import 'package:flutter/material.dart';
import 'package:dragoon_galaxy_s_application3/core/app_export.dart';
import 'package:dragoon_galaxy_s_application3/presentation/customer_login_screen/models/customer_login_model.dart';

/// A provider class for the CustomerLoginScreen.
///
/// This provider manages the state of the CustomerLoginScreen, including the
/// current customerLoginModelObj
class CustomerLoginProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  CustomerLoginModel customerLoginModelObj = CustomerLoginModel();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
