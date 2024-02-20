import 'package:flutter/material.dart';
import 'package:dragoon_galaxy_s_application3/core/app_export.dart';
import 'package:dragoon_galaxy_s_application3/widgets/custom_elevated_button.dart';
import 'models/entry_model.dart';
import 'provider/entry_provider.dart';

class EntryScreen extends StatefulWidget {
  const EntryScreen({Key? key})
      : super(
          key: key,
        );

  @override
  EntryScreenState createState() => EntryScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EntryProvider(),
      child: EntryScreen(),
    );
  }
}

class EntryScreenState extends State<EntryScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 7.v),
          child: Column(
            children: [
              SizedBox(height: 47.v),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle3,
                height: 81.v,
                width: 80.h,
              ),
              SizedBox(height: 6.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_swift".tr,
                      style: theme.textTheme.displaySmall,
                    ),
                    TextSpan(
                      text: "lbl_s".tr.toUpperCase(),
                      style: theme.textTheme.displaySmall,
                    ),
                    TextSpan(
                      text: "lbl_hare".tr,
                      style: theme.textTheme.displaySmall,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 559.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.only(top: 12.v),
                        padding: EdgeInsets.symmetric(
                          horizontal: 31.h,
                          vertical: 128.v,
                        ),
                        decoration:
                            AppDecoration.gradientWhiteAToCyanA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(left: 102.h),
                              child: Text(
                                "lbl_login_as".tr,
                                style: CustomTextStyles.titleLargeBlack900,
                              ),
                            ),
                            SizedBox(height: 21.v),
                            CustomElevatedButton(
                              text: "lbl_customer".tr,
                              buttonStyle: CustomButtonStyles.none,
                              decoration: CustomButtonStyles
                                  .gradientCyanToBlueDecoration,
                            ),
                            SizedBox(height: 24.v),
                            CustomElevatedButton(
                              text: "lbl_owner".tr,
                              buttonStyle: CustomButtonStyles.none,
                              decoration: CustomButtonStyles
                                  .gradientPrimaryToIndigoDecoration,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 53.h),
                        child: Text(
                          "msg_wheels_on_demand".tr,
                          style: CustomTextStyles.bodyMediumMoonDanceCyanA70001,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildNavBarLight(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildNavBarLight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 87.h,
        right: 90.h,
        bottom: 7.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowLeft,
            height: 16.adaptSize,
            width: 16.adaptSize,
            radius: BorderRadius.circular(
              1.h,
            ),
          ),
          Spacer(
            flex: 49,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgContrast,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
          Spacer(
            flex: 50,
          ),
          Container(
            height: 12.adaptSize,
            width: 12.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 4.v),
            decoration: BoxDecoration(
              color: appTheme.gray900,
              borderRadius: BorderRadius.circular(
                1.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
