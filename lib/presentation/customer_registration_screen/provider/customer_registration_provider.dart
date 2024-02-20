import 'package:flutter/material.dart';
import 'package:dragoon_galaxy_s_application3/core/app_export.dart';
import 'package:dragoon_galaxy_s_application3/presentation/customer_registration_screen/models/customer_registration_model.dart';

/// A provider class for the CustomerRegistrationScreen.
///
/// This provider manages the state of the CustomerRegistrationScreen, including the
/// current customerRegistrationModelObj
class CustomerRegistrationProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  TextEditingController twitterController = TextEditingController();

  TextEditingController twitterController1 = TextEditingController();

  CustomerRegistrationModel customerRegistrationModelObj =
      CustomerRegistrationModel();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    mobileNumberController.dispose();
    addressController.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordController1.dispose();
    twitterController.dispose();
    twitterController1.dispose();
  }
}
