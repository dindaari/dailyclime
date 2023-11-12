import 'package:dindari_s_daily_clime/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Playlist3ItemWidget extends StatelessWidget {
  const Playlist3ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 198.v,
      width: 341.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSwimming,
            height: 198.v,
            width: 341.h,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(top: 151.v),
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 6.v,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.customBorderBL20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 6.v),
                    child: Text(
                      "Swimming",
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgFluentWeather,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(
                      top: 4.v,
                      bottom: 9.v,
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
