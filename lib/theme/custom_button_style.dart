import 'dart:ui';
import 'package:dindari_s_daily_clime/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Gradient button style
  static BoxDecoration get gradientErrorContainerToWhiteADecoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(23.h),
        gradient: LinearGradient(
          begin: Alignment(0.11, 0),
          end: Alignment(1.42, -6),
          colors: [
            theme.colorScheme.errorContainer,
            appTheme.whiteA700.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientOnErrorToErrorContainerDecoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(20.h),
        gradient: LinearGradient(
          begin: Alignment(0.7, 0),
          end: Alignment(1.27, 1),
          colors: [
            theme.colorScheme.onError,
            theme.colorScheme.errorContainer,
          ],
        ),
      );
  static BoxDecoration get gradientOnErrorToErrorContainerTL16Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(16.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.16, 0),
          colors: [
            theme.colorScheme.onError,
            theme.colorScheme.errorContainer,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToErrorContainerDecoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(20.h),
        gradient: LinearGradient(
          begin: Alignment(0.62, 1),
          end: Alignment(0.29, -1),
          colors: [
            theme.colorScheme.primary,
            theme.colorScheme.errorContainer.withOpacity(0.8),
          ],
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
