import 'package:flutter/material.dart';
import 'package:dragoon_galaxy_s_application3/core/app_export.dart';
import 'package:dragoon_galaxy_s_application3/presentation/customer_homescreen_container_screen/models/customer_homescreen_container_model.dart';

/// A provider class for the CustomerHomescreenContainerScreen.
///
/// This provider manages the state of the CustomerHomescreenContainerScreen, including the
/// current customerHomescreenContainerModelObj

// ignore_for_file: must_be_immutable
class CustomerHomescreenContainerProvider extends ChangeNotifier {
  CustomerHomescreenContainerModel customerHomescreenContainerModelObj =
      CustomerHomescreenContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
