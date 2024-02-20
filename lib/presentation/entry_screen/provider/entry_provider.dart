import 'package:flutter/material.dart';
import 'package:dragoon_galaxy_s_application3/core/app_export.dart';
import 'package:dragoon_galaxy_s_application3/presentation/entry_screen/models/entry_model.dart';

/// A provider class for the EntryScreen.
///
/// This provider manages the state of the EntryScreen, including the
/// current entryModelObj
class EntryProvider extends ChangeNotifier {
  EntryModel entryModelObj = EntryModel();

  @override
  void dispose() {
    super.dispose();
  }
}
