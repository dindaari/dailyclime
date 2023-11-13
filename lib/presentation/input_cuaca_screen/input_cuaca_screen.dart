import 'package:dindari_s_daily_clime/core/app_export.dart';
import 'package:dindari_s_daily_clime/widgets/app_bar/appbar_leading_image.dart';
import 'package:dindari_s_daily_clime/widgets/app_bar/appbar_title.dart';
import 'package:dindari_s_daily_clime/widgets/app_bar/custom_app_bar.dart';
import 'package:dindari_s_daily_clime/widgets/custom_elevated_button.dart';
import 'package:dindari_s_daily_clime/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

// import "./openCamera.dart"

class InputCuacaScreen extends StatelessWidget {
  const InputCuacaScreen({Key? key})
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
          padding: EdgeInsets.symmetric(
            horizontal: 40.h,
            vertical: 19.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 51.v),
              Container(
                height: 189.v,
                width: 310.h,
                padding: EdgeInsets.only(
                  top: 52.v,
                  right: 106.h,
                  bottom: 52.v,
                ),
                decoration: AppDecoration.outlineBlack.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgCamera,
                  height: 73.v,
                  width: 86.h,
                  alignment: Alignment.topRight,
                ),
              ),
              SizedBox(height: 50.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 33.v,
                    width: 150.h,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomIconButton(
                          height: 33.v,
                          width: 150.h,
                          padding: EdgeInsets.all(9.h),
                          alignment: Alignment.center,
                          onTap: () => openCamera(context),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgGroup17,
                          ),
                          // onTap: () => openCamera(context),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 33.v,
                            width: 57.h,
                            margin: EdgeInsets.only(right: 36.h),
                            child: Text("Camera",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style:
                                    CustomTextStyles.bodyMediumKadwaGray90001),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomElevatedButton(
                    height: 33.v,
                    width: 150.h,
                    text: "Choose File",
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 6.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgVector,
                        height: 15.v,
                        width: 16.h,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.none,
                    decoration: CustomButtonStyles
                        .gradientOnErrorToErrorContainerTL16Decoration,
                    buttonTextStyle: CustomTextStyles.bodyMediumKadwaGray90001,
                  ),
                ],
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

  // Metode statis untuk membuka kamera
  static void openCamera(BuildContext context) async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;

    // Inisialisasi kontrol kamera
    final CameraController controller = CameraController(
      firstCamera,
      ResolutionPreset.medium,
    );

    // Inisialisasi kamera
    await controller.initialize();

    // Buka layar kamera
    // Pastikan untuk mengganti 'YourCurrentPage' dengan nama kelas halaman saat ini
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => YourCurrentPage(cameraController: controller),
      ),
    );
  }
}

class YourCurrentPage extends StatelessWidget {
  final CameraController cameraController;

  const YourCurrentPage({Key? key, required this.cameraController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Camera Page'),
      ),
      body: CameraPreview(cameraController),
    );
  }
}
