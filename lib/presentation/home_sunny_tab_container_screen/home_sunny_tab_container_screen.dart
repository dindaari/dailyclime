import 'package:dindari_s_daily_clime/core/app_export.dart';
import 'package:dindari_s_daily_clime/presentation/home_cloudy_page/home_cloudy_page.dart';
import 'package:dindari_s_daily_clime/presentation/home_haze_page/home_haze_page.dart';
import 'package:dindari_s_daily_clime/presentation/home_popular_page/home_popular_page.dart';
import 'package:dindari_s_daily_clime/presentation/home_rain_page/home_rain_page.dart';
import 'package:dindari_s_daily_clime/presentation/home_sunny_page/home_sunny_page.dart';
import 'package:dindari_s_daily_clime/widgets/app_bar/appbar_leading_image.dart';
import 'package:dindari_s_daily_clime/widgets/app_bar/custom_app_bar.dart';
import 'package:dindari_s_daily_clime/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class HomeSunnyTabContainerScreen extends StatefulWidget {
  const HomeSunnyTabContainerScreen({Key? key}) : super(key: key);

  @override
  HomeSunnyTabContainerScreenState createState() =>
      HomeSunnyTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class HomeSunnyTabContainerScreenState
    extends State<HomeSunnyTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 21.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomElevatedButton(
                              height: 57.v,
                              text: "CHECK WEATHER",
                              margin: EdgeInsets.only(left: 20.h, right: 24.h),
                              buttonStyle: CustomButtonStyles.none,
                              decoration: CustomButtonStyles
                                  .gradientOnErrorToErrorContainerDecoration,
                              buttonTextStyle: theme.textTheme.titleLarge!,
                              onPressed: () {
                                onTapCHECKWEATHER(context);
                              },
                              alignment: Alignment.center),
                          SizedBox(height: 21.v),
                          Padding(
                              padding: EdgeInsets.only(left: 23.h),
                              child: Text("Find your",
                                  style: theme.textTheme.displayMedium)),
                          Padding(
                              padding: EdgeInsets.only(left: 23.h),
                              child: Text("activity",
                                  style: CustomTextStyles.displayMediumMedium)),
                          SizedBox(height: 12.v),
                          _buildTabview(context),
                          SizedBox(
                              height: 559.v,
                              child: TabBarView(
                                  controller: tabviewController,
                                  children: [
                                    HomePopularPage(),
                                    HomeRainPage(),
                                    HomeSunnyPage(),
                                    HomeCloudyPage(),
                                    HomeHazePage()
                                  ]))
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 105.v,
        leadingWidth: 51.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgMenu,
            margin: EdgeInsets.only(left: 23.h, top: 17.v, bottom: 21.v)),
        actions: [
          Container(
              height: 44.119995.v,
              width: 43.h,
              margin: EdgeInsets.fromLTRB(22.h, 6.v, 22.h, 5.v),
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        height: 38.adaptSize,
                        width: 38.adaptSize,
                        margin:
                            EdgeInsets.only(left: 2.h, top: 6.v, right: 2.h),
                        decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimary,
                            borderRadius: BorderRadius.circular(19.h)))),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 40.v,
                        width: 43.h,
                        margin: EdgeInsets.only(bottom: 4.v),
                        decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                            borderRadius: BorderRadius.circular(21.h)))),
                Padding(
                    padding: EdgeInsets.fromLTRB(19.h, 7.v, 11.h, 11.v),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.topRight,
                          child: Container(
                              width: 9.adaptSize,
                              margin: EdgeInsets.only(left: 3.h),
                              decoration: AppDecoration.fillRedA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder4),
                              child: Text("2",
                                  style: CustomTextStyles.openSansWhiteA700))),
                      SizedBox(height: 11.v),
                      Container(
                          height: 5.v,
                          width: 4.h,
                          margin: EdgeInsets.only(right: 8.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.h),
                              border: Border.all(
                                  color: appTheme.black90001, width: 1.h)))
                    ])),
                CustomImageView(
                    imagePath: ImageConstant.imgNotification,
                    height: 18.v,
                    width: 23.h,
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.fromLTRB(10.h, 8.v, 9.h, 17.v))
              ]))
        ]);
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 34.v,
        width: 361.h,
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.black90001,
            labelStyle: TextStyle(
                fontSize: 18.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400),
            unselectedLabelColor: appTheme.black90001.withOpacity(0.53),
            unselectedLabelStyle: TextStyle(
                fontSize: 18.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400),
            indicatorColor: appTheme.black90001,
            tabs: [
              Tab(child: Opacity(opacity: 0.5, child: Text("Popular"))),
              Tab(child: Opacity(opacity: 0.5, child: Text("Rain"))),
              Tab(child: Text("Sunny")),
              Tab(child: Opacity(opacity: 0.5, child: Text("Cloudy"))),
              Tab(child: Opacity(opacity: 0.5, child: Text("Haze")))
            ]));
  }

  /// Navigates to the inputCuacaScreen when the action is triggered.
  onTapCHECKWEATHER(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.inputCuacaScreen);
  }
}
