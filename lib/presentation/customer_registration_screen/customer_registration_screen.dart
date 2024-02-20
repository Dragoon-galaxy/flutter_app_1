import 'package:flutter/material.dart';
import 'package:dragoon_galaxy_s_application3/core/app_export.dart';
import 'package:dragoon_galaxy_s_application3/core/utils/validation_functions.dart';
import 'package:dragoon_galaxy_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:dragoon_galaxy_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:dragoon_galaxy_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:dragoon_galaxy_s_application3/widgets/custom_elevated_button.dart';
import 'package:dragoon_galaxy_s_application3/widgets/custom_text_form_field.dart';
import 'models/customer_registration_model.dart';
import 'provider/customer_registration_provider.dart';

class CustomerRegistrationScreen extends StatefulWidget {
  const CustomerRegistrationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CustomerRegistrationScreenState createState() =>
      CustomerRegistrationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CustomerRegistrationProvider(),
      child: CustomerRegistrationScreen(),
    );
  }
}

class CustomerRegistrationScreenState
    extends State<CustomerRegistrationScreen> {
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
                  children: [
                    SizedBox(height: 13.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 223.h,
                        margin: EdgeInsets.only(left: 33.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "msg_new_user_registeration".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                              TextSpan(
                                text: "msg_please_enter_the".tr,
                                style: CustomTextStyles
                                    .bodyMediumInterff000000Light_1,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    SizedBox(height: 22.v),
                    _buildName(context),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 33.h,
                        vertical: 16.v,
                      ),
                      decoration: AppDecoration.gradientWhiteAToCyanA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder15,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildMobileNumber(context),
                          SizedBox(height: 16.v),
                          _buildAddress(context),
                          SizedBox(height: 16.v),
                          _buildEmail(context),
                          SizedBox(height: 16.v),
                          _buildPassword(context),
                          SizedBox(height: 16.v),
                          _buildPassword1(context),
                          SizedBox(height: 16.v),
                          _buildTwitter(context),
                          SizedBox(height: 16.v),
                          _buildTwitter1(context),
                          SizedBox(height: 16.v),
                          SizedBox(
                            width: 111.h,
                            child: Divider(),
                          ),
                          SizedBox(height: 20.v),
                          _buildCreateAccount(context),
                          SizedBox(height: 23.v),
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
      height: 65.v,
      leadingWidth: 62.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 14.h,
          bottom: 8.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_for_customer2".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 42.h,
        right: 38.h,
      ),
      child: Selector<CustomerRegistrationProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.nameController,
        builder: (context, nameController, child) {
          return CustomTextFormField(
            controller: nameController,
            hintText: "lbl_name".tr,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildMobileNumber(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.h),
      child: Selector<CustomerRegistrationProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.mobileNumberController,
        builder: (context, mobileNumberController, child) {
          return CustomTextFormField(
            controller: mobileNumberController,
            hintText: "lbl_mobile_number".tr,
            textInputType: TextInputType.phone,
            validator: (value) {
              if (!isValidPhone(value)) {
                return "err_msg_please_enter_valid_phone_number".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 5.h,
        right: 7.h,
      ),
      child: Selector<CustomerRegistrationProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.addressController,
        builder: (context, addressController, child) {
          return CustomTextFormField(
            controller: addressController,
            hintText: "lbl_address".tr,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.h),
      child: Selector<CustomerRegistrationProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.emailController,
        builder: (context, emailController, child) {
          return CustomTextFormField(
            controller: emailController,
            hintText: "lbl_email_address".tr,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.h),
      child: Selector<CustomerRegistrationProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.passwordController,
        builder: (context, passwordController, child) {
          return CustomTextFormField(
            controller: passwordController,
            hintText: "lbl_password".tr,
            textInputType: TextInputType.visiblePassword,
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: true,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.h),
      child: Selector<CustomerRegistrationProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.passwordController1,
        builder: (context, passwordController1, child) {
          return CustomTextFormField(
            controller: passwordController1,
            hintText: "lbl_retype_password".tr,
            textInputType: TextInputType.visiblePassword,
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: true,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTwitter(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.h),
      child: Selector<CustomerRegistrationProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.twitterController,
        builder: (context, twitterController, child) {
          return CustomTextFormField(
            controller: twitterController,
            hintText: "msg_submit_the_identity".tr,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(19.h, 14.v, 29.h, 14.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgTwitter,
                height: 25.adaptSize,
                width: 25.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 55.v,
            ),
            contentPadding: EdgeInsets.only(
              top: 18.v,
              right: 30.h,
              bottom: 18.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL25,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTwitter1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.h),
      child: Selector<CustomerRegistrationProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.twitterController1,
        builder: (context, twitterController1, child) {
          return CustomTextFormField(
            controller: twitterController1,
            hintText: "msg_submit_the_driving".tr,
            textInputAction: TextInputAction.done,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(19.h, 14.v, 27.h, 14.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgTwitter,
                height: 25.adaptSize,
                width: 25.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 55.v,
            ),
            contentPadding: EdgeInsets.only(
              top: 18.v,
              right: 30.h,
              bottom: 18.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL25,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateAccount(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_create_account".tr,
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientPrimaryToIndigoDecoration,
      buttonTextStyle: CustomTextStyles.bodyLargeInterWhiteA700,
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
