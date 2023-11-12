import '../home_cloudy_page/widgets/playlist2_item_widget.dart';
import 'package:dindari_s_daily_clime/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomeCloudyPage extends StatefulWidget {
  const HomeCloudyPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeCloudyPageState createState() => HomeCloudyPageState();
}

class HomeCloudyPageState extends State<HomeCloudyPage>
    with AutomaticKeepAliveClientMixin<HomeCloudyPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 18.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    right: 23.h,
                  ),
                  child: Column(
                    children: [
                      _buildPlaylist(context),
                      CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 78.v,
                        width: 72.h,
                        alignment: Alignment.centerRight,
                      ),
                      SizedBox(height: 37.v),
                      SizedBox(
                        width: 120.h,
                        child: Divider(),
                      ),
                    ],
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
  Widget _buildPlaylist(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 24.v,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return Playlist2ItemWidget();
        },
      ),
    );
  }
}
