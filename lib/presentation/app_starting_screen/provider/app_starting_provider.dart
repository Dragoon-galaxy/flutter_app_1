import 'package:flutter/material.dart';
import 'package:dragoon_galaxy_s_application3/core/app_export.dart';
import 'package:dragoon_galaxy_s_application3/presentation/app_starting_screen/models/app_starting_model.dart';

/// A provider class for the AppStartingScreen.
///
/// This provider manages the state of the AppStartingScreen, including the
/// current appStartingModelObj

// ignore_for_file: must_be_immutable
class AppStartingProvider extends ChangeNotifier {
  AppStartingModel appStartingModelObj = AppStartingModel();

  @override
  void dispose() {
    super.dispose();
  }
}
