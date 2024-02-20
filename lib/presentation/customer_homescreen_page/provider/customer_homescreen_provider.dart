import 'package:flutter/material.dart';
import 'package:dragoon_galaxy_s_application3/core/app_export.dart';
import 'package:dragoon_galaxy_s_application3/presentation/customer_homescreen_page/models/customer_homescreen_model.dart';
import '../models/carlisting_item_model.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';

/// A provider class for the CustomerHomescreenPage.
///
/// This provider manages the state of the CustomerHomescreenPage, including the
/// current customerHomescreenModelObj

// ignore_for_file: must_be_immutable
class CustomerHomescreenProvider extends ChangeNotifier {
  CustomerHomescreenModel customerHomescreenModelObj =
      CustomerHomescreenModel();

  int sliderIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }
}
