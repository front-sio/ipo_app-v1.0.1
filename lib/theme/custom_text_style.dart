import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumPoppins => theme.textTheme.bodyMedium!.poppins.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumPoppinsPrimary =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get bodyMediumWorkSansOnPrimary =>
      theme.textTheme.bodyMedium!.workSans.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 14.fSize,
      );
  static get bodySmallGray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray400,
        fontSize: 8.fSize,
      );
  static get bodySmallPoppins => theme.textTheme.bodySmall!.poppins;
  static get bodySmallPoppinsGray60001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray60001,
      );
  static get bodySmallPoppinsLight =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        fontSize: 11.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallSFProTextGray50 =>
      theme.textTheme.bodySmall!.sFProText.copyWith(
        color: appTheme.gray50,
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeBlack90013 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
      );
  static get labelLargePoppinsBlack900 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargeRobotoBlack900 =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeRobotoBlack900Bold =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeRobotoErrorContainer =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeRobotoGray60002 =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: appTheme.gray60002,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeRobotoGray700 =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeRobotoGray900 =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeRobotoPrimary =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeWorkSansOnPrimary =>
      theme.textTheme.labelLarge!.workSans.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 13.fSize,
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumErrorContainer => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumRobotoBlack900 =>
      theme.textTheme.labelMedium!.roboto.copyWith(
        color: appTheme.black900,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumRobotoPrimary =>
      theme.textTheme.labelMedium!.roboto.copyWith(
        color: theme.colorScheme.primary,
      );
  // Title text style
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 21.fSize,
      );
  static get titleLargePoppins => theme.textTheme.titleLarge!.poppins.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargePoppinsPrimary =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargeRoboto => theme.textTheme.titleLarge!.roboto.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get titleMediumPoppins => theme.textTheme.titleMedium!.poppins;
  static get titleMediumPoppinsMedium =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsMedium_1 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsPrimary =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumRoboto => theme.textTheme.titleMedium!.roboto.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray500,
        fontSize: 14.fSize,
      );
  static get titleSmallInter => theme.textTheme.titleSmall!.inter.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallInterMedium =>
      theme.textTheme.titleSmall!.inter.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterRed50001 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.red50001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppins => theme.textTheme.titleSmall!.poppins.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsErrorContainer =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsGray60002 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray60002,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsGray700 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray700,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsGray70001 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray70001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsMedium =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsPrimary =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPoppinsPrimary_1 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallPoppins_1 => theme.textTheme.titleSmall!.poppins;
  static get titleSmallPoppinsff000000 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: Color(0XFF000000),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsffff9134 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: Color(0XFFFF9134),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRoboto => theme.textTheme.titleSmall!.roboto.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallRoboto14 => theme.textTheme.titleSmall!.roboto.copyWith(
        fontSize: 14.fSize,
      );
  static get titleSmallRobotoBlack900 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.87),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoMedium =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallff000000 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF000000),
        fontSize: 14.fSize,
      );
  static get titleSmallff69778e => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF69778E),
        fontSize: 14.fSize,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
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

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get workSans {
    return copyWith(
      fontFamily: 'Work Sans',
    );
  }
}
