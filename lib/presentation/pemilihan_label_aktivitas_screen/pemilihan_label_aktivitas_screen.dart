import '../pemilihan_label_aktivitas_screen/widgets/workshopregistration_item_widget.dart';
import 'package:dindari_s_daily_clime/core/app_export.dart';
import 'package:flutter/material.dart';

class PemilihanLabelAktivitasScreen extends StatelessWidget {
  const PemilihanLabelAktivitasScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 19.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 65.v),
              _buildMenuAndNotifications(context),
              SizedBox(height: 11.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 28.h,
                  right: 35.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Delete All",
                      style: CustomTextStyles.bodySmallBlack90001,
                    ),
                    Text(
                      "Read all",
                      style: CustomTextStyles.bodySmallBlack90001,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.v),
              _buildWorkshopRegistration(context),
              SizedBox(height: 435.v),
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
  Widget _buildMenuAndNotifications(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.gradientPrimaryToErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMenuBlack90001,
            height: 35.adaptSize,
            width: 35.adaptSize,
            margin: EdgeInsets.only(top: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 80.h,
              top: 7.v,
              bottom: 9.v,
            ),
            child: Text(
              "Notifications",
              style: CustomTextStyles.titleMediumMontserrat,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWorkshopRegistration(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 5.v,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return WorkshopregistrationItemWidget();
        },
      ),
    );
  }
}
