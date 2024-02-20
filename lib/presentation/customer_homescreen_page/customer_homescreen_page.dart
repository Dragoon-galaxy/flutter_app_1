import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'package:dragoon_galaxy_s_application3/core/app_export.dart';
import 'package:dragoon_galaxy_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:dragoon_galaxy_s_application3/widgets/app_bar/appbar_image_one.dart';
import 'package:dragoon_galaxy_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:dragoon_galaxy_s_application3/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:dragoon_galaxy_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'models/carlisting_item_model.dart';
import 'models/customer_homescreen_model.dart';
import 'models/userprofile_item_model.dart';
import 'provider/customer_homescreen_provider.dart';
import 'widgets/carlisting_item_widget.dart';
import 'widgets/userprofile_item_widget.dart';

// ignore_for_file: must_be_immutable
class CustomerHomescreenPage extends StatefulWidget {
  const CustomerHomescreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  CustomerHomescreenPageState createState() => CustomerHomescreenPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CustomerHomescreenProvider(),
      child: CustomerHomescreenPage(),
    );
  }
}

class CustomerHomescreenPageState extends State<CustomerHomescreenPage> {
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
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(
                height: 696.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGrahameJenkins,
                      height: 274.v,
                      width: 225.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 17.h),
                    ),
                    _buildCarListing(context),
                    _buildBrandAvailable(context),
                    _buildUserProfile(context),
                  ],
                ),
              ),
              SizedBox(height: 46.v),
              _buildNavBarLight(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 35.v,
      leadingWidth: 43.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 18.h,
          top: 8.v,
          bottom: 9.v,
        ),
      ),
      title: Container(
        margin: EdgeInsets.only(left: 15.h),
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 1.v,
        ),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppbarImage(
              imagePath: ImageConstant.imgLinkedin,
              margin: EdgeInsets.only(
                top: 6.v,
                bottom: 8.v,
              ),
            ),
            AppbarSubtitleTwo(
              text: "msg_your_location_khapri".tr,
              margin: EdgeInsets.only(
                left: 6.h,
                top: 2.v,
              ),
            ),
            AppbarImage(
              imagePath: ImageConstant.imgArrowDownBlack900,
              margin: EdgeInsets.fromLTRB(7.h, 22.v, 19.h, 6.v),
            ),
          ],
        ),
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(
            left: 19.h,
            right: 19.h,
            bottom: 2.v,
          ),
          decoration: AppDecoration.fillCyanA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: AppbarImageOne(
            imagePath: ImageConstant.imgImage24,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCarListing(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(top: 200.v),
        child: IntrinsicWidth(
          child: SizedBox(
            height: 496.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 81.v,
                    width: double.maxFinite,
                    margin: EdgeInsets.only(bottom: 12.v),
                    decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      borderRadius: BorderRadius.circular(
                        15.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 59.v,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: appTheme.cyanA70001,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 484.v,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        15.h,
                      ),
                      gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                          theme.colorScheme.onPrimary,
                          theme.colorScheme.onError.withOpacity(0.15),
                          theme.colorScheme.onError.withOpacity(0.15),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(23.h, 104.v, 23.h, 371.v),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "msg_available_near_you".tr,
                          style: CustomTextStyles.titleMediumBlack900,
                        ),
                        Text(
                          "lbl_see_all".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 12.v),
                  child: Consumer<CustomerHomescreenProvider>(
                    builder: (context, provider, child) {
                      return StaggeredGridView.countBuilder(
                        shrinkWrap: true,
                        primary: false,
                        crossAxisCount: 4,
                        crossAxisSpacing: 19.73.h,
                        mainAxisSpacing: 19.73.h,
                        staggeredTileBuilder: (index) {
                          return StaggeredTile.fit(2);
                        },
                        itemCount: provider.customerHomescreenModelObj
                            .carlistingItemList.length,
                        itemBuilder: (context, index) {
                          CarlistingItemModel model = provider
                              .customerHomescreenModelObj
                              .carlistingItemList[index];
                          return CarlistingItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBrandAvailable(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 21.h,
          top: 226.v,
          right: 16.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.only(right: 7.h),
              decoration: AppDecoration.outlineBlack900,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "msg_brands_available".tr,
                    style: CustomTextStyles.titleSmallBlack900,
                  ),
                  Text(
                    "lbl_see_all".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ],
              ),
            ),
            SizedBox(height: 6.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle47,
                  height: 34.v,
                  width: 42.h,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle48,
                  height: 34.v,
                  width: 44.h,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle49,
                  height: 34.v,
                  width: 35.h,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                  margin: EdgeInsets.only(bottom: 1.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle50,
                  height: 34.v,
                  width: 44.h,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                  margin: EdgeInsets.only(bottom: 1.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle51,
                  height: 34.v,
                  width: 48.h,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                  margin: EdgeInsets.only(bottom: 1.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle46,
                  height: 34.v,
                  width: 69.h,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                  margin: EdgeInsets.only(bottom: 1.v),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 149.v,
        width: 327.h,
        margin: EdgeInsets.only(top: 66.v),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Consumer<CustomerHomescreenProvider>(
              builder: (context, provider, child) {
                return CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 149.v,
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (
                      index,
                      reason,
                    ) {
                      provider.sliderIndex = index;
                    },
                  ),
                  itemCount: provider
                      .customerHomescreenModelObj.userprofileItemList.length,
                  itemBuilder: (context, index, realIndex) {
                    UserprofileItemModel model = provider
                        .customerHomescreenModelObj.userprofileItemList[index];
                    return UserprofileItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Consumer<CustomerHomescreenProvider>(
                builder: (context, provider, child) {
                  return Container(
                    height: 8.v,
                    margin: EdgeInsets.only(bottom: 34.v),
                    child: AnimatedSmoothIndicator(
                      activeIndex: provider.sliderIndex,
                      count: provider.customerHomescreenModelObj
                          .userprofileItemList.length,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                        spacing: 8,
                        activeDotColor: appTheme.blue800.withOpacity(0.7),
                        dotColor: appTheme.gray40096,
                        dotHeight: 8.v,
                        dotWidth: 8.h,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNavBarLight(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 87.h,
        vertical: 7.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowLeft,
            height: 16.adaptSize,
            width: 16.adaptSize,
            radius: BorderRadius.circular(
              1.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 2.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgContrast,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
          Container(
            height: 12.adaptSize,
            width: 12.adaptSize,
            margin: EdgeInsets.only(
              top: 2.v,
              right: 3.h,
              bottom: 2.v,
            ),
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
