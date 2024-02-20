import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get bodyLargeBlack900_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeInterWhiteA700 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.62),
      );
  static get bodyMediumHandleeWhiteA700 =>
      theme.textTheme.bodyMedium!.handlee.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
      );
  static get bodyMediumInter7a000000 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: Color(0X7A000000),
        fontSize: 15.fSize,
      );
  static get bodyMediumInter7a000000Light =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: Color(0X7A000000),
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumInterff000000 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: Color(0XFF000000),
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumInterff00000015 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: Color(0XFF000000),
        fontSize: 15.fSize,
      );
  static get bodyMediumInterff000000Light =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: Color(0XFF000000),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumInterff000000Light_1 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: Color(0XFF000000),
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumMoonDanceCyanA70001 =>
      theme.textTheme.bodyMedium!.moonDance.copyWith(
        color: appTheme.cyanA70001,
        fontSize: 15.fSize,
      );
  static get bodySmallInter7a000000 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: Color(0X7A000000),
        fontSize: 11.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  // Display text style
  static get displaySmallInterCyanA70001 =>
      theme.textTheme.displaySmall!.inter.copyWith(
        color: appTheme.cyanA70001,
        fontWeight: FontWeight.w500,
      );
  // Headline text style
  static get headlineLargeDeeppurpleA700 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.deepPurpleA700,
        fontWeight: FontWeight.w500,
      );
  static get headlineLargeInterBlack900 =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargePathwayGothicOneGray50 =>
      theme.textTheme.headlineLarge!.pathwayGothicOne.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargeff09a1d2 => theme.textTheme.headlineLarge!.copyWith(
        color: Color(0XFF09A1D2),
      );
  static get headlineLargeff09a2d2 => theme.textTheme.headlineLarge!.copyWith(
        color: Color(0XFF09A2D2),
      );
  static get headlineLargeff11b6cc => theme.textTheme.headlineLarge!.copyWith(
        color: Color(0XFF11B6CC),
      );
  static get headlineLargeff4a09d2 => theme.textTheme.headlineLarge!.copyWith(
        color: Color(0XFF4A09D2),
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w300,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleLargeWhiteA700ExtraBold =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack900Medium => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.62),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallIBMPlexSansThaiLoopedWhiteA700 =>
      theme.textTheme.titleSmall!.iBMPlexSansThaiLooped.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get moonDance {
    return copyWith(
      fontFamily: 'Moon Dance',
    );
  }

  TextStyle get koulen {
    return copyWith(
      fontFamily: 'Koulen',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get mulish {
    return copyWith(
      fontFamily: 'Mulish',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get iBMPlexSansThaiLooped {
    return copyWith(
      fontFamily: 'IBM Plex Sans Thai Looped',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get handlee {
    return copyWith(
      fontFamily: 'Handlee',
    );
  }

  TextStyle get pathwayGothicOne {
    return copyWith(
      fontFamily: 'Pathway Gothic One',
    );
  }
}
