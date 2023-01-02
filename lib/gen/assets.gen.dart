/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  $AssetsIconsArrowsGen get arrows => const $AssetsIconsArrowsGen();
  $AssetsIconsCommunicationsGen get communications =>
      const $AssetsIconsCommunicationsGen();
  $AssetsIconsGeneralGen get general => const $AssetsIconsGeneralGen();
  $AssetsIconsProfileAndUsersGen get profileAndUsers =>
      const $AssetsIconsProfileAndUsersGen();
}

class $AssetsIllustrationsGen {
  const $AssetsIllustrationsGen();

  $AssetsIllustrationsOnboardingGen get onboarding =>
      const $AssetsIllustrationsOnboardingGen();
  $AssetsIllustrationsThirdPartyGen get thirdParty =>
      const $AssetsIllustrationsThirdPartyGen();
  $AssetsIllustrationsWelcomeGen get welcome =>
      const $AssetsIllustrationsWelcomeGen();
}

class $AssetsLauncherIconGen {
  const $AssetsLauncherIconGen();

  /// File path: assets/launcher_icon/foreground_logo.png
  AssetGenImage get foregroundLogo =>
      const AssetGenImage('assets/launcher_icon/foreground_logo.png');

  /// File path: assets/launcher_icon/logo.png
  AssetGenImage get logo =>
      const AssetGenImage('assets/launcher_icon/logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [foregroundLogo, logo];
}

class $AssetsIconsArrowsGen {
  const $AssetsIconsArrowsGen();

  /// File path: assets/icons/arrows/arrow-left.svg
  SvgGenImage get arrowLeft =>
      const SvgGenImage('assets/icons/arrows/arrow-left.svg');

  /// File path: assets/icons/arrows/arrow-right.svg
  SvgGenImage get arrowRight =>
      const SvgGenImage('assets/icons/arrows/arrow-right.svg');

  /// List of all assets
  List<SvgGenImage> get values => [arrowLeft, arrowRight];
}

class $AssetsIconsCommunicationsGen {
  const $AssetsIconsCommunicationsGen();

  /// File path: assets/icons/communications/mail-01.svg
  SvgGenImage get mail01 =>
      const SvgGenImage('assets/icons/communications/mail-01.svg');

  /// File path: assets/icons/communications/phone.svg
  SvgGenImage get phone =>
      const SvgGenImage('assets/icons/communications/phone.svg');

  /// List of all assets
  List<SvgGenImage> get values => [mail01, phone];
}

class $AssetsIconsGeneralGen {
  const $AssetsIconsGeneralGen();

  /// File path: assets/icons/general/x-01.svg
  SvgGenImage get x01 => const SvgGenImage('assets/icons/general/x-01.svg');

  /// List of all assets
  List<SvgGenImage> get values => [x01];
}

class $AssetsIconsProfileAndUsersGen {
  const $AssetsIconsProfileAndUsersGen();

  /// File path: assets/icons/profileAndUsers/user-profile-01.svg
  SvgGenImage get userProfile01 =>
      const SvgGenImage('assets/icons/profileAndUsers/user-profile-01.svg');

  /// List of all assets
  List<SvgGenImage> get values => [userProfile01];
}

class $AssetsIllustrationsOnboardingGen {
  const $AssetsIllustrationsOnboardingGen();

  /// File path: assets/illustrations/onboarding/illustrations-0.svg
  SvgGenImage get illustrations0 =>
      const SvgGenImage('assets/illustrations/onboarding/illustrations-0.svg');

  /// File path: assets/illustrations/onboarding/illustrations-1.svg
  SvgGenImage get illustrations1 =>
      const SvgGenImage('assets/illustrations/onboarding/illustrations-1.svg');

  /// File path: assets/illustrations/onboarding/illustrations-2.svg
  SvgGenImage get illustrations2 =>
      const SvgGenImage('assets/illustrations/onboarding/illustrations-2.svg');

  /// File path: assets/illustrations/onboarding/illustrations-3.svg
  SvgGenImage get illustrations3 =>
      const SvgGenImage('assets/illustrations/onboarding/illustrations-3.svg');

  /// File path: assets/illustrations/onboarding/illustrations-4.svg
  SvgGenImage get illustrations4 =>
      const SvgGenImage('assets/illustrations/onboarding/illustrations-4.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        illustrations0,
        illustrations1,
        illustrations2,
        illustrations3,
        illustrations4
      ];
}

class $AssetsIllustrationsThirdPartyGen {
  const $AssetsIllustrationsThirdPartyGen();

  /// File path: assets/illustrations/third_party/facebook.svg
  SvgGenImage get facebook =>
      const SvgGenImage('assets/illustrations/third_party/facebook.svg');

  /// File path: assets/illustrations/third_party/google.svg
  SvgGenImage get google =>
      const SvgGenImage('assets/illustrations/third_party/google.svg');

  /// File path: assets/illustrations/third_party/twitter.svg
  SvgGenImage get twitter =>
      const SvgGenImage('assets/illustrations/third_party/twitter.svg');

  /// List of all assets
  List<SvgGenImage> get values => [facebook, google, twitter];
}

class $AssetsIllustrationsWelcomeGen {
  const $AssetsIllustrationsWelcomeGen();

  /// File path: assets/illustrations/welcome/rocket.svg
  SvgGenImage get rocket =>
      const SvgGenImage('assets/illustrations/welcome/rocket.svg');

  /// List of all assets
  List<SvgGenImage> get values => [rocket];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsIllustrationsGen illustrations =
      $AssetsIllustrationsGen();
  static const $AssetsLauncherIconGen launcherIcon = $AssetsLauncherIconGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
