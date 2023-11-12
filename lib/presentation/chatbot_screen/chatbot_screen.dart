import 'package:dindari_s_daily_clime/core/app_export.dart';
import 'package:dindari_s_daily_clime/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:dindari_s_daily_clime/widgets/app_bar/appbar_subtitle.dart';
import 'package:dindari_s_daily_clime/widgets/app_bar/custom_app_bar.dart';
import 'package:dindari_s_daily_clime/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ChatbotScreen extends StatelessWidget {
  const ChatbotScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black900,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 26.h,
            vertical: 6.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 238.h,
                margin: EdgeInsets.only(right: 100.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 11.v,
                ),
                decoration: AppDecoration.fillGray900.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL24,
                ),
                child: Container(
                  width: 188.h,
                  margin: EdgeInsets.only(right: 17.h),
                  child: Text(
                    "Hai, saya Clime Bot, senang bertemu dengan Anda!",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      height: 1.29,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 3.v),
              Container(
                width: 238.h,
                margin: EdgeInsets.only(right: 100.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 9.v,
                ),
                decoration: AppDecoration.fillGray900.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderLR24,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 2.v),
                    Container(
                      width: 186.h,
                      margin: EdgeInsets.only(right: 19.h),
                      child: Text(
                        "Aktivitas apa yang kamu inginkan?",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyLarge!.copyWith(
                          height: 1.29,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 3.v),
              Container(
                margin: EdgeInsets.only(right: 100.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 11.v,
                ),
                decoration: AppDecoration.fillGray900.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderBL24,
                ),
                child: SizedBox(
                  width: 202.h,
                  child: Text(
                    "Izinkan saya membantu mendeteksi cuaca saat ini.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      height: 1.29,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(left: 44.h),
                child: Row(
                  children: [
                    CustomElevatedButton(
                      width: 113.h,
                      text: "📷 Kamera",
                    ),
                    CustomElevatedButton(
                      width: 115.h,
                      text: "📂 Pilih File",
                      margin: EdgeInsets.only(left: 8.h),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 27.v),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 120.h,
                  child: Divider(
                    color: appTheme.whiteA700,
                  ),
                ),
              ),
              SizedBox(height: 21.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 86.v,
      leadingWidth: 68.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgRectangle1,
        margin: EdgeInsets.only(
          left: 28.h,
          top: 8.v,
          bottom: 28.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "Clime Bot",
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }
}
