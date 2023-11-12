import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargePoppinsBlack90001 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.black90001,
        fontSize: 18.fSize,
      );
  static get bodyLargePoppinsBlack9000118 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.black90001.withOpacity(0.53),
        fontSize: 18.fSize,
      );
  static get bodyMediumKadwaGray90001 =>
      theme.textTheme.bodyMedium!.kadwa.copyWith(
        color: appTheme.gray90001,
        fontSize: 15.fSize,
      );
  static get bodySmallBlack90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90001,
      );
  static get bodySmallBluegray300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray300,
        fontSize: 11.fSize,
      );
  static get bodySmallPoppinsBlack90001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.black90001,
      );
  // Display text style
  static get displayMediumMedium => theme.textTheme.displayMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  // Headline text style
  static get headlineSmallKadwaWhiteA700 =>
      theme.textTheme.headlineSmall!.kadwa.copyWith(
        color: appTheme.whiteA700,
        fontSize: 24.fSize,
      );
  // Open text style
  static get openSansWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w600,
      ).openSans;
  // Title text style
  static get titleLargeInterWhiteA700 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
      );
  static get titleMediumMontserrat =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get kadwa {
    return copyWith(
      fontFamily: 'Kadwa',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }
}
