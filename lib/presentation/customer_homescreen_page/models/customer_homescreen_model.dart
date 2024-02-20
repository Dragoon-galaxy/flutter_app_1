import '../../../core/app_export.dart';
import 'carlisting_item_model.dart';
import 'userprofile_item_model.dart';

class CustomerHomescreenModel {
  List<CarlistingItemModel> carlistingItemList = [
    CarlistingItemModel(
        carImage: ImageConstant.imgRectangle12,
        starImage: ImageConstant.imgFluentStar16Filled,
        settingsImage: ImageConstant.imgSettings),
    CarlistingItemModel(carImage: ImageConstant.imgRectangle12117x215)
  ];

  List<UserprofileItemModel> userprofileItemList =
      List.generate(1, (index) => UserprofileItemModel());
}
