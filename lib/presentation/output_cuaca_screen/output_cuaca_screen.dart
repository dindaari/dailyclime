import 'package:dindari_s_daily_clime/core/app_export.dart';
import 'package:dindari_s_daily_clime/widgets/app_bar/appbar_leading_image.dart';
import 'package:dindari_s_daily_clime/widgets/app_bar/appbar_title.dart';
import 'package:dindari_s_daily_clime/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class OutputCuacaScreen extends StatelessWidget {
  const OutputCuacaScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 19.v),
          child: Column(
            children: [
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 115.h,
                  right: 105.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Opacity(
                      opacity: 0.2,
                      child: SizedBox(
                        child: Divider(
                          color: appTheme.black90001.withOpacity(0.42),
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.2,
                      child: SizedBox(
                        child: Divider(
                          color: appTheme.black90001.withOpacity(0.42),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
              _buildSeventySeven(context),
              SizedBox(height: 18.v),
              Opacity(
                opacity: 0.2,
                child: Divider(
                  color: appTheme.black90001.withOpacity(0.42),
                ),
              ),
              Spacer(),
              SizedBox(
                width: 120.h,
                child: Divider(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 60.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMenuBlack90001,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 18.v,
          bottom: 17.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "WEATHER",
      ),
      styleType: Style.bgGradientnameprimarynameerrorContaineropacity08,
    );
  }

  /// Section Widget
  Widget _buildSeventySeven(BuildContext context) {
    return SizedBox(
      height: 43.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Opacity(
            opacity: 0.2,
            child: Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: double.maxFinite,
                child: Divider(
                  color: appTheme.black90001.withOpacity(0.42),
                ),
              ),
            ),
          ),
          Opacity(
            opacity: 0.2,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                child: Divider(
                  color: appTheme.black90001.withOpacity(0.42),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(bottom: 10.v),
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 5.v,
              ),
              decoration: AppDecoration.fillSecondaryContainer,
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFluentWeather,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(bottom: 3.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 2.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "TINDAKAN LANJUTAN",
                      style: CustomTextStyles.bodySmallPoppinsBlack90001,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
