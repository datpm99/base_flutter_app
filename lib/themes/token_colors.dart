import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_themes.dart';

class TokenColors {
  /// Text tokens.
  static Color get headingPrimary =>
      AppThemes.isDarkMode ? AppColors.neutral50 : AppColors.neutral900;

  static Color get headingSecondary =>
      AppThemes.isDarkMode ? AppColors.neutral200 : AppColors.neutral700;

  static Color get placeholder =>
      AppThemes.isDarkMode ? AppColors.neutral400 : AppColors.neutral500;

  static Color get headingInverted =>
      AppThemes.isDarkMode ? AppColors.neutral900 : AppColors.baseWhite;

  static Color get body =>
      AppThemes.isDarkMode ? AppColors.neutral200 : AppColors.neutral600;

  static Color get bodyInverted =>
      AppThemes.isDarkMode ? AppColors.neutral700 : AppColors.neutral200;

  static Color get bodyOnBrand =>
      AppThemes.isDarkMode ? AppColors.neutral900 : AppColors.primary50;

  static Color get subHeadlineBrand =>
      AppThemes.isDarkMode ? AppColors.primary400 : AppColors.primary500;

  static Color get footerHeadline =>
      AppThemes.isDarkMode ? AppColors.neutral400 : AppColors.neutral500;

  static Color get footerHeadlineInverted =>
      AppThemes.isDarkMode ? AppColors.neutral900 : AppColors.baseWhite;

  static Color get disabled =>
      AppThemes.isDarkMode ? AppColors.neutral600 : AppColors.neutral300;

  static Color get errorPrimary =>
      AppThemes.isDarkMode ? AppColors.error300 : AppColors.error600;

  static Color get errorSecondary =>
      AppThemes.isDarkMode ? AppColors.error400 : AppColors.error500;

  /// Background tokens.
  static Color get bgPrimary =>
      AppThemes.isDarkMode ? AppColors.neutral900 : AppColors.baseWhite;

  static Color get bgPrimaryCards =>
      AppThemes.isDarkMode ? AppColors.neutral800 : AppColors.baseWhite;

  static Color get bgSecondary =>
      AppThemes.isDarkMode ? AppColors.neutral800 : AppColors.neutral50;

  static Color get bgTertiary =>
      AppThemes.isDarkMode ? AppColors.neutral700 : AppColors.neutral100;

  static Color get bgQuaternary =>
      AppThemes.isDarkMode ? AppColors.neutral700 : AppColors.neutral200;

  static Color get bgSenary =>
      AppThemes.isDarkMode ? AppColors.neutral700 : AppColors.neutral300;

  static Color get bgSolidPrimary =>
      AppThemes.isDarkMode ? AppColors.neutral50 : AppColors.neutral900;

  static Color get bgSolidSecondary =>
      AppThemes.isDarkMode ? AppColors.neutral300 : AppColors.neutral800;

  static Color get bgSolidTertiary =>
      AppThemes.isDarkMode ? AppColors.neutral200 : AppColors.neutral700;

  static Color get bgSolidQuarternary =>
      AppThemes.isDarkMode ? AppColors.neutral400 : AppColors.neutral500;

  static Color get bgBrandPrimary =>
      AppThemes.isDarkMode ? AppColors.primary900 : AppColors.primary50;

  static Color get bgBrandSecondary =>
      AppThemes.isDarkMode ? AppColors.primary800 : AppColors.primary100;

  static Color get bgBrandTertiary =>
      AppThemes.isDarkMode ? AppColors.primary700 : AppColors.primary200;

  static Color get bgBrandQuaternary =>
      AppThemes.isDarkMode ? AppColors.primary400 : AppColors.primary500;

  static Color get bgBrandQuinary =>
      AppThemes.isDarkMode ? AppColors.primary300 : AppColors.primary600;

  static Color get bgBrandSenary =>
      AppThemes.isDarkMode ? AppColors.primary200 : AppColors.primary700;

  static Color get bgSuccessPrimary =>
      AppThemes.isDarkMode ? AppColors.success900 : AppColors.success50;

  static Color get bgSuccessSecondary =>
      AppThemes.isDarkMode ? AppColors.success800 : AppColors.success100;

  static Color get bgSuccessTertiary =>
      AppThemes.isDarkMode ? AppColors.success400 : AppColors.success500;

  static Color get bgSuccessQuarternary =>
      AppThemes.isDarkMode ? AppColors.success300 : AppColors.success600;

  static Color get bgSuccessSenery =>
      AppThemes.isDarkMode ? AppColors.success200 : AppColors.success700;

  static Color get bgWarning =>
      AppThemes.isDarkMode ? AppColors.warning900 : AppColors.warning500;

  static Color get bgErrorPrimary =>
      AppThemes.isDarkMode ? AppColors.error900 : AppColors.error50;

  static Color get bgErrorSecondary =>
      AppThemes.isDarkMode ? AppColors.error800 : AppColors.error100;

  static Color get bgErrorTertiary =>
      AppThemes.isDarkMode ? AppColors.error700 : AppColors.error200;

  static Color get bgErrorQuarternary =>
      AppThemes.isDarkMode ? AppColors.error300 : AppColors.error600;

  static Color get bgErrorQuinary =>
      AppThemes.isDarkMode ? AppColors.error200 : AppColors.error700;

  static Color get bgErrorSenary =>
      AppThemes.isDarkMode ? AppColors.error100 : AppColors.error800;

  /// Border tokens.
  static Color get borderPrimary =>
      AppThemes.isDarkMode ? AppColors.neutral600 : AppColors.neutral300;

  static Color get borderSecondary =>
      AppThemes.isDarkMode ? AppColors.neutral700 : AppColors.neutral200;

  static Color get borderTertiary =>
      AppThemes.isDarkMode ? AppColors.neutral800 : AppColors.neutral100;

  static Color get borderDisabled =>
      AppThemes.isDarkMode ? AppColors.neutral600 : AppColors.neutral300;

  static Color get borderSolid =>
      AppThemes.isDarkMode ? AppColors.neutral300 : AppColors.neutral600;

  static Color get borderBrand =>
      AppThemes.isDarkMode ? AppColors.primary400 : AppColors.primary500;

  static Color get borderBrandHover =>
      AppThemes.isDarkMode ? AppColors.primary300 : AppColors.primary600;

  static Color get borderBrandClick =>
      AppThemes.isDarkMode ? AppColors.primary200 : AppColors.primary700;

  static Color get borderBrandSubtle =>
      AppThemes.isDarkMode ? AppColors.primary700 : AppColors.primary200;

  static Color get borderWhite =>
      AppThemes.isDarkMode ? AppColors.neutral900 : AppColors.baseWhite;

  static Color get borderErrorSubtle =>
      AppThemes.isDarkMode ? AppColors.error600 : AppColors.error300;

  static Color get borderErrorDisabled =>
      AppThemes.isDarkMode ? AppColors.error700 : AppColors.error200;

  static Color get borderError =>
      AppThemes.isDarkMode ? AppColors.error300 : AppColors.error600;

  static Color get borderErrorHover =>
      AppThemes.isDarkMode ? AppColors.error200 : AppColors.error700;

  static Color get borderErrorClick =>
      AppThemes.isDarkMode ? AppColors.error100 : AppColors.error800;

  ///Icon tokens.
  static Color get iconPrimary =>
      AppThemes.isDarkMode ? AppColors.neutral500 : AppColors.neutral900;

  static Color get iconSecondary =>
      AppThemes.isDarkMode ? AppColors.neutral100 : AppColors.neutral800;

  static Color get iconTertiary =>
      AppThemes.isDarkMode ? AppColors.neutral200 : AppColors.neutral700;

  static Color get iconQuaternary =>
      AppThemes.isDarkMode ? AppColors.neutral300 : AppColors.neutral600;

  static Color get iconQuinary =>
      AppThemes.isDarkMode ? AppColors.neutral400 : AppColors.neutral500;

  static Color get iconSenary =>
      AppThemes.isDarkMode ? AppColors.neutral400 : AppColors.neutral400;

  static Color get iconSeptenary =>
      AppThemes.isDarkMode ? AppColors.neutral600 : AppColors.neutral300;

  static Color get iconOnFill =>
      AppThemes.isDarkMode ? AppColors.neutral900 : AppColors.baseWhite;

  static Color get iconBrandPrimary =>
      AppThemes.isDarkMode ? AppColors.primary300 : AppColors.primary600;

  static Color get iconBrandSecondary =>
      AppThemes.isDarkMode ? AppColors.primary400 : AppColors.primary500;

  static Color get iconBrandTertiary =>
      AppThemes.isDarkMode ? AppColors.primary200 : AppColors.primary700;

  static Color get iconBrandDisabled =>
      AppThemes.isDarkMode ? AppColors.primary700 : AppColors.primary200;

  static Color get iconSuccessPrimary =>
      AppThemes.isDarkMode ? AppColors.success400 : AppColors.success500;

  static Color get iconSuccessSecondary =>
      AppThemes.isDarkMode ? AppColors.success300 : AppColors.success600;

  static Color get iconWarningPrimary =>
      AppThemes.isDarkMode ? AppColors.warning400 : AppColors.warning500;

  static Color get iconWarningSecondary =>
      AppThemes.isDarkMode ? AppColors.warning600 : AppColors.warning600;

  static Color get iconErrorPrimary =>
      AppThemes.isDarkMode ? AppColors.error100 : AppColors.error800;

  static Color get iconErrorSecondary =>
      AppThemes.isDarkMode ? AppColors.error200 : AppColors.error700;

  static Color get iconErrorTertiary =>
      AppThemes.isDarkMode ? AppColors.error300 : AppColors.error600;

  static Color get iconErrorQuaternary =>
      AppThemes.isDarkMode ? AppColors.error400 : AppColors.error500;

  static Color get iconErrorDisabled =>
      AppThemes.isDarkMode ? AppColors.error700 : AppColors.error200;

  /// Button tokens.
  // Primary
  static Color get fgButtonPrimary => AppColors.baseWhite;

  static Color get fgButtonPrimaryDisabled =>
      AppThemes.isDarkMode ? AppColors.neutral500 : AppColors.neutral400;

  static Color get bgButtonPrimary =>
      AppThemes.isDarkMode ? AppColors.primary500 : AppColors.primary500;

  static Color get bgButtonPrimaryHover =>
      AppThemes.isDarkMode ? AppColors.primary400 : AppColors.primary600;

  static Color get bgButtonPrimaryClick =>
      AppThemes.isDarkMode ? AppColors.primary300 : AppColors.primary700;

  static Color get bgButtonPrimaryDisabled =>
      AppThemes.isDarkMode ? AppColors.primary700 : AppColors.primary100;

  // Secondary
  static Color get fgButtonSecondary =>
      AppThemes.isDarkMode ? AppColors.primary400 : AppColors.primary500;

  static Color get fgButtonSecondaryHover =>
      AppThemes.isDarkMode ? AppColors.primary300 : AppColors.primary600;

  static Color get fgButtonSecondaryClick =>
      AppThemes.isDarkMode ? AppColors.primary200 : AppColors.primary700;

  static Color get fgButtonSecondaryDisabled =>
      AppThemes.isDarkMode ? AppColors.neutral500 : AppColors.neutral400;

  static Color get bgButtonSecondary =>
      AppThemes.isDarkMode ? AppColors.primary500 : AppColors.primary50;

  static Color get bgButtonSecondaryHover =>
      AppThemes.isDarkMode ? AppColors.primary400 : AppColors.primary100;

  static Color get bgButtonSecondaryClick =>
      AppThemes.isDarkMode ? AppColors.primary200 : AppColors.primary200;

  static Color get bgButtonSecondaryDisabled =>
      AppThemes.isDarkMode ? AppColors.primary700 : AppColors.primary100;

  static Color get borderButtonSecondary =>
      AppThemes.isDarkMode ? AppColors.primary400 : AppColors.primary500;

  static Color get borderButtonSecondaryHover =>
      AppThemes.isDarkMode ? AppColors.primary300 : AppColors.primary600;

  static Color get borderButtonSecondaryClick =>
      AppThemes.isDarkMode ? AppColors.primary200 : AppColors.primary700;

  static Color get borderButtonSecondaryDisabled =>
      AppThemes.isDarkMode ? AppColors.neutral700 : AppColors.neutral200;

  // Tertiary
  static Color get fgButtonTertiary =>
      AppThemes.isDarkMode ? AppColors.neutral200 : AppColors.neutral700;

  static Color get fgButtonTertiaryHover =>
      AppThemes.isDarkMode ? AppColors.neutral100 : AppColors.neutral800;

  static Color get fgButtonTertiaryClick =>
      AppThemes.isDarkMode ? AppColors.neutral50 : AppColors.neutral900;

  static Color get fgButtonTertiaryDisabled =>
      AppThemes.isDarkMode ? AppColors.neutral500 : AppColors.neutral400;

  static Color get bgButtonTertiary =>
      AppThemes.isDarkMode ? AppColors.baseWhite : AppColors.baseWhite;

  static Color get bgButtonTertiaryHover =>
      AppThemes.isDarkMode ? AppColors.baseWhite : AppColors.baseWhite;

  static Color get bgButtonTertiaryClick =>
      AppThemes.isDarkMode ? AppColors.baseWhite : AppColors.baseWhite;

  static Color get bgButtonTertiaryDisabled =>
      AppThemes.isDarkMode ? AppColors.baseWhite : AppColors.baseWhite;

  static Color get borderButtonTertiary =>
      AppThemes.isDarkMode ? AppColors.neutral300 : AppColors.neutral300;

  static Color get borderButtonTertiaryHover =>
      AppThemes.isDarkMode ? AppColors.neutral200 : AppColors.neutral400;

  static Color get borderButtonTertiaryClick =>
      AppThemes.isDarkMode ? AppColors.neutral100 : AppColors.neutral500;

  static Color get borderButtonTertiaryDisabled =>
      AppThemes.isDarkMode ? AppColors.neutral700 : AppColors.neutral200;

  // Link 01
  static Color get fgButtonLink01 =>
      AppThemes.isDarkMode ? AppColors.primary200 : AppColors.primary900;

  static Color get fgButtonLink01Hover =>
      AppThemes.isDarkMode ? AppColors.primary100 : AppColors.primary700;

  static Color get fgButtonLink01Click =>
      AppThemes.isDarkMode ? AppColors.primary50 : AppColors.primary700;

  static Color get fgButtonLink01Disabled =>
      AppThemes.isDarkMode ? AppColors.neutral400 : AppColors.neutral400;

  static Color get bgButtonLink01 =>
      AppThemes.isDarkMode ? AppColors.neutral900 : AppColors.neutral50;

  // Link 02
  static Color get fgButtonLink02 =>
      AppThemes.isDarkMode ? AppColors.neutral400 : AppColors.neutral900;

  static Color get fgButtonLink02Hover =>
      AppThemes.isDarkMode ? AppColors.neutral300 : AppColors.neutral700;

  static Color get fgButtonLink02Click =>
      AppThemes.isDarkMode ? AppColors.neutral200 : AppColors.neutral900;

  static Color get fgButtonLink02Disabled =>
      AppThemes.isDarkMode ? AppColors.neutral400 : AppColors.neutral400;

  static Color get bgButtonLink02 =>
      AppThemes.isDarkMode ? AppColors.neutral900 : AppColors.neutral50;

  // Destructive primary
  static Color get fgButtonDestructivePrimary => AppColors.baseWhite;

  static Color get fgButtonDestructivePrimaryDisabled =>
      AppThemes.isDarkMode ? AppColors.neutral500 : AppColors.neutral400;

  static Color get bgButtonDestructivePrimary =>
      AppThemes.isDarkMode ? AppColors.error500 : AppColors.error500;

  static Color get bgButtonDestructivePrimaryHover =>
      AppThemes.isDarkMode ? AppColors.error400 : AppColors.error600;

  static Color get bgButtonDestructivePrimaryClick =>
      AppThemes.isDarkMode ? AppColors.error300 : AppColors.error700;

  static Color get bgButtonDestructivePrimaryDisabled =>
      AppThemes.isDarkMode ? AppColors.error700 : AppColors.error100;

  // Destructive secondary
  static Color get fgButtonDestructiveSecondary =>
      AppThemes.isDarkMode ? AppColors.error400 : AppColors.error500;

  static Color get fgButtonDestructiveSecondaryHover =>
      AppThemes.isDarkMode ? AppColors.error300 : AppColors.error600;

  static Color get fgButtonDestructiveSecondaryClick =>
      AppThemes.isDarkMode ? AppColors.error200 : AppColors.error700;

  static Color get fgButtonDestructiveSecondaryDisabled =>
      AppThemes.isDarkMode ? AppColors.neutral500 : AppColors.neutral400;

  static Color get bgButtonDestructiveSecondary =>
      AppThemes.isDarkMode ? AppColors.error500 : AppColors.error50;

  static Color get bgButtonDestructiveSecondaryHover =>
      AppThemes.isDarkMode ? AppColors.error400 : AppColors.error100;

  static Color get bgButtonDestructiveSecondaryClick =>
      AppThemes.isDarkMode ? AppColors.error200 : AppColors.error200;

  static Color get bgButtonDestructiveSecondaryDisabled =>
      AppThemes.isDarkMode ? AppColors.error700 : AppColors.error100;

  static Color get borderButtonDestructiveSecondary =>
      AppThemes.isDarkMode ? AppColors.error400 : AppColors.error500;

  static Color get borderButtonDestructiveSecondaryHover =>
      AppThemes.isDarkMode ? AppColors.error300 : AppColors.error600;

  static Color get borderButtonDestructiveSecondaryClick =>
      AppThemes.isDarkMode ? AppColors.error200 : AppColors.error700;

  static Color get borderButtonDestructiveSecondaryDisabled =>
      AppThemes.isDarkMode ? AppColors.neutral700 : AppColors.neutral200;

  // Destructive tertiary
  static Color get fgButtonDestructiveTertiary =>
      AppThemes.isDarkMode ? AppColors.error200 : AppColors.error700;

  static Color get fgButtonDestructiveTertiaryHover =>
      AppThemes.isDarkMode ? AppColors.error100 : AppColors.error800;

  static Color get fgButtonDestructiveTertiaryClick =>
      AppThemes.isDarkMode ? AppColors.error50 : AppColors.error900;

  static Color get fgButtonDestructiveTertiaryDisabled =>
      AppThemes.isDarkMode ? AppColors.neutral500 : AppColors.neutral400;

  static Color get bgButtonDestructiveTertiary =>
      AppThemes.isDarkMode ? AppColors.baseWhite : AppColors.baseWhite;

  static Color get bgButtonDestructiveTertiaryHover =>
      AppThemes.isDarkMode ? AppColors.baseWhite : AppColors.baseWhite;

  static Color get bgButtonDestructiveTertiaryClick =>
      AppThemes.isDarkMode ? AppColors.baseWhite : AppColors.baseWhite;

  static Color get bgButtonDestructiveTertiaryDisabled =>
      AppThemes.isDarkMode ? AppColors.baseWhite : AppColors.baseWhite;

  static Color get borderButtonDestructiveTertiary =>
      AppThemes.isDarkMode ? AppColors.error300 : AppColors.error300;

  static Color get borderButtonDestructiveTertiaryHover =>
      AppThemes.isDarkMode ? AppColors.error200 : AppColors.error400;

  static Color get borderButtonDestructiveTertiaryClick =>
      AppThemes.isDarkMode ? AppColors.error100 : AppColors.error500;

  static Color get borderButtonDestructiveTertiaryDisabled =>
      AppThemes.isDarkMode ? AppColors.neutral700 : AppColors.neutral200;

  // Destructive link 01
  static Color get fgButtonDestructiveLink01 =>
      AppThemes.isDarkMode ? AppColors.error200 : AppColors.error900;

  static Color get fgButtonDestructiveLink01Hover =>
      AppThemes.isDarkMode ? AppColors.error100 : AppColors.error700;

  static Color get fgButtonDestructiveLink01Click =>
      AppThemes.isDarkMode ? AppColors.error50 : AppColors.error700;

  static Color get fgButtonDestructiveLink01Disabled =>
      AppThemes.isDarkMode ? AppColors.neutral400 : AppColors.neutral400;

  static Color get bgButtonDestructiveLink01 =>
      AppThemes.isDarkMode ? AppColors.neutral900 : AppColors.neutral50;

  /// Mockup tokens.
  // Desktop.
  static Color get mockupHeaderBg =>
      AppThemes.isDarkMode ? AppColors.neutral700 : AppColors.neutral300;

  static Color get mockupHeaderDots =>
      AppThemes.isDarkMode ? AppColors.neutral500 : AppColors.baseWhite;

  static Color get mockupBorder =>
      AppThemes.isDarkMode ? AppColors.neutral700 : AppColors.neutral300;

  // Mobile.
  static Color get mockupMobileBorder =>
      AppThemes.isDarkMode ? AppColors.neutral600 : AppColors.neutral300;

  static Color get mockupBg =>
      AppThemes.isDarkMode ? AppColors.neutral800 : AppColors.baseWhite;
}
