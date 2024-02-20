import 'package:flutter/material.dart';
import 'package:dragoon_galaxy_s_application3/core/app_export.dart';
import 'package:dragoon_galaxy_s_application3/widgets/custom_elevated_button.dart';
import 'models/app_starting_model.dart';
import 'provider/app_starting_provider.dart';

class AppStartingScreen extends StatefulWidget {
  const AppStartingScreen({Key? key}) : super(key: key);

  @override
  AppStartingScreenState createState() => AppStartingScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AppStartingProvider(), child: AppStartingScreen());
  }
}

class AppStartingScreenState extends State<AppStartingScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.entryScreen,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(
                      height: 694.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse70,
                            height: 477.v,
                            width: 220.h,
                            alignment: Alignment.bottomRight),
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle4,
                            height: 291.v,
                            width: 337.h,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(bottom: 47.v)),
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse67,
                            height: 501.v,
                            width: 199.h,
                            alignment: Alignment.topLeft),
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle3,
                            height: 81.v,
                            width: 80.h,
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top: 42.v)),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                                padding: EdgeInsets.only(top: 139.v),
                                child: Text("lbl_welcome_to".tr,
                                    style: CustomTextStyles
                                        .headlineLargePathwayGothicOneGray50))),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                width: 288.h,
                                margin: EdgeInsets.only(top: 187.v),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl_the_be".tr,
                                          style: theme.textTheme.headlineLarge),
                                      TextSpan(
                                          text: "lbl_s".tr,
                                          style: theme.textTheme.headlineLarge),
                                      TextSpan(
                                          text: "lbl_t_vehicle".tr,
                                          style: CustomTextStyles
                                              .headlineLargeff09a1d2),
                                      TextSpan(text: " "),
                                      TextSpan(
                                          text: "lbl_rental".tr,
                                          style: theme.textTheme.headlineLarge),
                                      TextSpan(text: " "),
                                      TextSpan(
                                          text: "lbl_c".tr,
                                          style: theme.textTheme.headlineLarge),
                                      TextSpan(
                                          text: "lbl_om".tr,
                                          style: CustomTextStyles
                                              .headlineLargeff09a1d2),
                                      TextSpan(
                                          text: "lbl_p".tr,
                                          style: CustomTextStyles
                                              .headlineLargeff11b6cc),
                                      TextSpan(
                                          text: "lbl_a".tr,
                                          style: CustomTextStyles
                                              .headlineLargeff09a2d2),
                                      TextSpan(
                                          text: "lbl_ny".tr,
                                          style: theme.textTheme.headlineLarge)
                                    ]),
                                    textAlign: TextAlign.center))),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 12.v),
                                child:
                                    SizedBox(width: 111.h, child: Divider())))
                      ])),
                  CustomElevatedButton(
                      height: 36.v,
                      width: 228.h,
                      text: "lbl_let_s_go".tr,
                      buttonStyle: CustomButtonStyles.none,
                      decoration:
                          CustomButtonStyles.gradientCyanAToBlueDecoration,
                      buttonTextStyle:
                          CustomTextStyles.titleLargeWhiteA700ExtraBold),
                  SizedBox(height: 12.v),
                  _buildNavBarLight(context)
                ]))));
  }

  /// Section Widget
  Widget _buildNavBarLight(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 87.h, vertical: 7.v),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 16.adaptSize,
              width: 16.adaptSize,
              radius: BorderRadius.circular(1.h),
              margin: EdgeInsets.symmetric(vertical: 2.v)),
          CustomImageView(
              imagePath: ImageConstant.imgContrast,
              height: 20.adaptSize,
              width: 20.adaptSize),
          Container(
              height: 12.adaptSize,
              width: 12.adaptSize,
              margin: EdgeInsets.only(top: 2.v, right: 3.h, bottom: 2.v),
              decoration: BoxDecoration(
                  color: appTheme.gray900,
                  borderRadius: BorderRadius.circular(1.h)))
        ]));
  }
}
