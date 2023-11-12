import 'package:dindari_s_daily_clime/core/app_export.dart';
import 'package:dindari_s_daily_clime/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class BerandaScreen extends StatelessWidget {
  const BerandaScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            gradient: LinearGradient(
              begin: Alignment(-0.27, 0.46),
              end: Alignment(0.86, -0.68),
              colors: [
                appTheme.whiteA700,
                theme.colorScheme.onError,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 3.h,
              vertical: 91.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(
                  flex: 50,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgLogo,
                  height: 250.v,
                  width: 373.h,
                ),
                Spacer(
                  flex: 50,
                ),
                CustomElevatedButton(
                  width: 170.h,
                  text: "Start",
                  buttonStyle: CustomButtonStyles.none,
                  decoration: CustomButtonStyles
                      .gradientErrorContainerToWhiteADecoration,
                  buttonTextStyle: CustomTextStyles.headlineSmallKadwaWhiteA700,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
