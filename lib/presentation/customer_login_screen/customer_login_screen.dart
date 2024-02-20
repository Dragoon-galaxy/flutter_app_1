import 'package:flutter/material.dart';
import 'package:dragoon_galaxy_s_application3/core/app_export.dart';
import 'package:dragoon_galaxy_s_application3/core/utils/validation_functions.dart';
import 'package:dragoon_galaxy_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:dragoon_galaxy_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:dragoon_galaxy_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:dragoon_galaxy_s_application3/widgets/custom_elevated_button.dart';
import 'package:dragoon_galaxy_s_application3/widgets/custom_text_form_field.dart';
import 'models/customer_login_model.dart';
import 'provider/customer_login_provider.dart';

class CustomerLoginScreen extends StatefulWidget {
  const CustomerLoginScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CustomerLoginScreenState createState() => CustomerLoginScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CustomerLoginProvider(),
      child: CustomerLoginScreen(),
    );
  }
}

class CustomerLoginScreenState extends State<CustomerLoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 7.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 23.v),
                    Container(
                      width: 126.h,
                      margin: EdgeInsets.only(left: 110.h),
                      child: Text(
                        "lbl_for_customer".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                    SizedBox(height: 24.v),
                    SizedBox(
                      height: 566.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 24.h,
                                vertical: 37.v,
                              ),
                              decoration:
                                  AppDecoration.gradientWhiteAToCyanA.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 11.h,
                                      right: 21.h,
                                    ),
                                    child: Selector<CustomerLoginProvider,
                                        TextEditingController?>(
                                      selector: (
                                        context,
                                        provider,
                                      ) =>
                                          provider.emailController,
                                      builder:
                                          (context, emailController, child) {
                                        return CustomTextFormField(
                                          controller: emailController,
                                          hintText: "lbl_email_address".tr,
                                          textInputType:
                                              TextInputType.emailAddress,
                                          validator: (value) {
                                            if (value == null ||
                                                (!isValidEmail(value,
                                                    isRequired: true))) {
                                              return "err_msg_please_enter_valid_email"
                                                  .tr;
                                            }
                                            return null;
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(height: 16.v),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 11.h,
                                      right: 19.h,
                                    ),
                                    child: Selector<CustomerLoginProvider,
                                        TextEditingController?>(
                                      selector: (
                                        context,
                                        provider,
                                      ) =>
                                          provider.passwordController,
                                      builder:
                                          (context, passwordController, child) {
                                        return CustomTextFormField(
                                          controller: passwordController,
                                          hintText: "lbl_password".tr,
                                          textInputAction: TextInputAction.done,
                                          textInputType:
                                              TextInputType.visiblePassword,
                                          alignment: Alignment.center,
                                          validator: (value) {
                                            if (value == null ||
                                                (!isValidPassword(value,
                                                    isRequired: true))) {
                                              return "err_msg_please_enter_valid_password"
                                                  .tr;
                                            }
                                            return null;
                                          },
                                          obscureText: true,
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(height: 4.v),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 21.h),
                                      child: Text(
                                        "msg_forget_password".tr,
                                        style:
                                            CustomTextStyles.bodyMediumBlack900,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 22.v),
                                  CustomElevatedButton(
                                    height: 40.v,
                                    width: 142.h,
                                    text: "lbl_sign_in".tr,
                                    margin: EdgeInsets.only(left: 80.h),
                                    buttonStyle: CustomButtonStyles.none,
                                    decoration: CustomButtonStyles
                                        .gradientCyanToBlueDecoration,
                                    buttonTextStyle:
                                        CustomTextStyles.titleSmallWhiteA700,
                                  ),
                                  SizedBox(height: 28.v),
                                  _buildLoginForm(context),
                                  SizedBox(height: 28.v),
                                  _buildSocialMediaLogin(context),
                                  SizedBox(height: 36.v),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 32.h,
                                        right: 18.h,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 1.v),
                                            child: Text(
                                              "lbl_not_registered".tr,
                                              style: CustomTextStyles
                                                  .bodyLargeBlack900_1,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 8.h),
                                            child: Text(
                                              "msg_create_an_account".tr,
                                              style: theme.textTheme.bodyLarge,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 92.v),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 269.h,
                              margin: EdgeInsets.only(left: 35.h),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_sign_in2".tr,
                                      style: theme.textTheme.titleLarge,
                                    ),
                                    TextSpan(
                                      text: "msg_please_enter_your".tr,
                                      style: CustomTextStyles
                                          .bodyMediumInterff000000Light_1,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildNavBarLight(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 62.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 14.h,
          bottom: 11.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 31.h),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 44.h),
              child: RichText(
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
            ),
            AppbarSubtitleOne(
              text: "msg_wheels_on_demand".tr,
              margin: EdgeInsets.only(left: 127.h),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 13.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 11.v,
              bottom: 10.v,
            ),
            child: SizedBox(
              width: 65.h,
              child: Divider(
                color: appTheme.black900,
              ),
            ),
          ),
          Text(
            "msg_or_continue_with".tr,
            style: CustomTextStyles.bodyLargeBlack900,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 11.v,
              bottom: 10.v,
            ),
            child: SizedBox(
              width: 65.h,
              child: Divider(
                color: appTheme.black900,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSocialMediaLogin(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 5.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 60.v,
            width: 88.h,
            padding: EdgeInsets.symmetric(
              horizontal: 31.h,
              vertical: 17.v,
            ),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgAutoLayoutHorizontal,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Container(
            height: 60.v,
            width: 87.h,
            padding: EdgeInsets.symmetric(
              horizontal: 30.h,
              vertical: 17.v,
            ),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgAutoLayoutHorizontalRed500,
              height: 24.v,
              width: 23.h,
              alignment: Alignment.center,
            ),
          ),
          Container(
            height: 60.v,
            width: 88.h,
            padding: EdgeInsets.symmetric(
              horizontal: 31.h,
              vertical: 17.v,
            ),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgAutoLayoutHorizontalBlack900,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center,
            ),
          ),
        ],
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
