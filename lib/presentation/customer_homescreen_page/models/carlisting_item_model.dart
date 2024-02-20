import '../../../core/app_export.dart';

/// This class is used in the [carlisting_item_widget] screen.
class CarlistingItemModel {
  CarlistingItemModel({
    this.carImage,
    this.starImage,
    this.settingsImage,
    this.id,
  }) {
    carImage = carImage ?? ImageConstant.imgRectangle12;
    starImage = starImage ?? ImageConstant.imgFluentStar16Filled;
    settingsImage = settingsImage ?? ImageConstant.imgSettings;
    id = id ?? "";
  }

  String? carImage;

  String? starImage;

  String? settingsImage;

  String? id;
}
