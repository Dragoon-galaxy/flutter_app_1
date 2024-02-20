import 'package:flutter/material.dart';
import 'package:dragoon_galaxy_s_application3/core/app_export.dart';
import 'package:dragoon_galaxy_s_application3/widgets/custom_elevated_button.dart';
import '../models/carlisting_item_model.dart';

// ignore: must_be_immutable
class CarlistingItemWidget extends StatelessWidget {
  CarlistingItemWidget(
    this.carlistingItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CarlistingItemModel carlistingItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 9.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 2.v),
            CustomImageView(
              imagePath: carlistingItemModelObj?.carImage,
              height: 117.v,
              width: 215.h,
              radius: BorderRadius.circular(
                10.h,
              ),
            ),
            SizedBox(height: 7.v),
            SizedBox(
              height: 64.v,
              width: 216.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 206.h,
                      margin: EdgeInsets.only(left: 1.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_mahindra_thar2".tr,
                              style: CustomTextStyles.bodyMediumInterff00000015,
                            ),
                            TextSpan(
                              text: "lbl_4_8".tr,
                              style: CustomTextStyles.bodyMediumInterff000000,
                            ),
                            TextSpan(
                              text: "lbl_100_review".tr,
                              style:
                                  CustomTextStyles.bodyMediumInter7a000000Light,
                            ),
                            TextSpan(
                              text: "   ".tr,
                            ),
                            TextSpan(
                              text: "     \n     ".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                            TextSpan(
                              text: "lbl_500".tr,
                              style:
                                  CustomTextStyles.bodyMediumInterff000000Light,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "lbl_day".tr,
                              style: CustomTextStyles.bodySmallInter7a000000,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 24.v,
                        bottom: 5.v,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: carlistingItemModelObj?.starImage,
                                  height: 13.v,
                                  width: 14.h,
                                  alignment: Alignment.center,
                                ),
                                SizedBox(height: 9.v),
                                CustomImageView(
                                  imagePath:
                                      carlistingItemModelObj?.settingsImage,
                                  height: 12.v,
                                  width: 9.h,
                                  alignment: Alignment.centerRight,
                                  margin: EdgeInsets.only(right: 1.h),
                                ),
                              ],
                            ),
                          ),
                          CustomElevatedButton(
                            height: 24.v,
                            width: 58.h,
                            text: "lbl_rent_now".tr,
                            margin: EdgeInsets.only(top: 11.v),
                            buttonStyle: CustomButtonStyles.none,
                            decoration: CustomButtonStyles
                                .gradientCyanAToBlueTL5Decoration,
                            buttonTextStyle: theme.textTheme.labelMedium!,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
