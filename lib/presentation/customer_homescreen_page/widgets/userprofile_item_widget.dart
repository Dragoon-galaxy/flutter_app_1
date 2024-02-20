import 'package:flutter/material.dart';
import 'package:dragoon_galaxy_s_application3/core/app_export.dart';
import 'package:dragoon_galaxy_s_application3/widgets/custom_search_view.dart';
import '../models/userprofile_item_model.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 149.v,
        width: 327.h,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 128.v,
                width: 327.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    15.h,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment(0.5, 0),
                    end: Alignment(0.5, 1),
                    colors: [
                      appTheme.blue800,
                      appTheme.cyanA700,
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 205.h,
                  top: 14.v,
                  right: 12.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "lbl_luxury_vehicles".tr,
                      style: CustomTextStyles
                          .titleSmallIBMPlexSansThaiLoopedWhiteA700,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        width: 86.h,
                        child: Text(
                          "msg_will_be_available".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.right,
                          style: CustomTextStyles.bodyMediumHandleeWhiteA700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomSearchView(
                width: 288.h,
                controller: searchBoxController,
                hintText: "lbl_search_vehicle".tr,
                alignment: Alignment.bottomCenter,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
