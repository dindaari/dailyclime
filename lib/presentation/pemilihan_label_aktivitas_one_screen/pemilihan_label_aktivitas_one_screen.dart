import '../pemilihan_label_aktivitas_one_screen/widgets/pemilihanlabelaktivitasone_item_widget.dart';
import 'package:dindari_s_daily_clime/core/app_export.dart';
import 'package:dindari_s_daily_clime/widgets/custom_elevated_button.dart';
import 'package:dindari_s_daily_clime/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PemilihanLabelAktivitasOneScreen extends StatelessWidget {
  PemilihanLabelAktivitasOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController onOffNotifController = TextEditingController();

  TextEditingController deleteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700.withOpacity(0.65),
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 84.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CustomElevatedButton(
                        height: 53.v,
                        text: "Notifications",
                        margin: EdgeInsets.only(
                          left: 11.h,
                          right: 13.h,
                        ),
                        buttonStyle: CustomButtonStyles.none,
                        decoration: CustomButtonStyles
                            .gradientPrimaryToErrorContainerDecoration,
                        buttonTextStyle: CustomTextStyles.titleMediumMontserrat,
                      ),
                      SizedBox(height: 11.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 39.h,
                          right: 46.h,
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
                      _buildPemilihanlabelaktivitasOne(context),
                      SizedBox(height: 301.v),
                      _buildTwelve(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPemilihanlabelaktivitasOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
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
          return PemilihanlabelaktivitasoneItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTwelve(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 56.h,
            child: Divider(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
          SizedBox(height: 12.v),
          CustomTextFormField(
            controller: onOffNotifController,
            hintText: "Turn off notifications",
            prefix: Container(
              margin: EdgeInsets.fromLTRB(16.h, 12.v, 15.h, 12.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgNotifications,
                height: 23.v,
                width: 24.h,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 47.v,
            ),
          ),
          SizedBox(height: 6.v),
          CustomTextFormField(
            controller: deleteController,
            hintText: "Delete",
            textInputAction: TextInputAction.done,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(14.h, 12.v, 15.h, 12.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgTrash,
                height: 23.v,
                width: 24.h,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 47.v,
            ),
          ),
          SizedBox(height: 21.v),
        ],
      ),
    );
  }
}
