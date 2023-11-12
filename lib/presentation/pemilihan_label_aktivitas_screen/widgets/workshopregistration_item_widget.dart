import 'package:dindari_s_daily_clime/core/app_export.dart';
import 'package:dindari_s_daily_clime/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WorkshopregistrationItemWidget extends StatelessWidget {
  WorkshopregistrationItemWidget({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillDeepPurpleA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: CustomRadioButton(
              width: 282.h,
              text: "Detection Success",
              value: "Detection Success",
              groupValue: radioGroup,
              isRightCheck: true,
              onChange: (value) {
                radioGroup = value;
              },
            ),
          ),
          Container(
            width: 202.h,
            margin: EdgeInsets.only(left: 13.h),
            child: Text(
              "You have successfully carried out weather detection for daily activities",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Text(
              "1 day ago",
              style: CustomTextStyles.bodySmallBluegray300,
            ),
          ),
        ],
      ),
    );
  }
}
