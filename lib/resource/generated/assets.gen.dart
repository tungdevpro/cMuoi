/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class $AssetsAnimationsGen {
  const $AssetsAnimationsGen();

  /// File path: assets/animations/loading_primary.json
  String get loadingPrimary => 'assets/animations/loading_primary.json';

  /// File path: assets/animations/loading_white.json
  String get loadingWhite => 'assets/animations/loading_white.json';

  /// List of all assets
  List<String> get values => [loadingPrimary, loadingWhite];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Arrow-left.svg
  SvgGenImage get arrowLeft => const SvgGenImage('assets/icons/Arrow-left.svg');

  /// File path: assets/icons/card.png
  AssetGenImage get card => const AssetGenImage('assets/icons/card.png');

  /// File path: assets/icons/coffee_bottom_bar.svg
  SvgGenImage get coffeeBottomBar =>
      const SvgGenImage('assets/icons/coffee_bottom_bar.svg');

  /// File path: assets/icons/coffee_selected_bottom_bar.svg
  SvgGenImage get coffeeSelectedBottomBar =>
      const SvgGenImage('assets/icons/coffee_selected_bottom_bar.svg');

  /// File path: assets/icons/eye-slash.svg
  SvgGenImage get eyeSlash => const SvgGenImage('assets/icons/eye-slash.svg');

  /// File path: assets/icons/home_bottom_bar.svg
  SvgGenImage get homeBottomBar =>
      const SvgGenImage('assets/icons/home_bottom_bar.svg');

  /// File path: assets/icons/home_selected_bottom_bar.svg
  SvgGenImage get homeSelectedBottomBar =>
      const SvgGenImage('assets/icons/home_selected_bottom_bar.svg');

  /// File path: assets/icons/notification-bing.svg
  SvgGenImage get notificationBing =>
      const SvgGenImage('assets/icons/notification-bing.svg');

  /// File path: assets/icons/notification.png
  AssetGenImage get notification =>
      const AssetGenImage('assets/icons/notification.png');

  /// File path: assets/icons/profile.svg
  SvgGenImage get profile => const SvgGenImage('assets/icons/profile.svg');

  /// File path: assets/icons/profile_bottom_bar.svg
  SvgGenImage get profileBottomBar =>
      const SvgGenImage('assets/icons/profile_bottom_bar.svg');

  /// File path: assets/icons/profle_selected_bottom_bar.svg
  SvgGenImage get profleSelectedBottomBar =>
      const SvgGenImage('assets/icons/profle_selected_bottom_bar.svg');

  /// File path: assets/icons/security_safe.jpeg
  AssetGenImage get securitySafe =>
      const AssetGenImage('assets/icons/security_safe.jpeg');

  /// File path: assets/icons/tag_bottom_bar.svg
  SvgGenImage get tagBottomBar =>
      const SvgGenImage('assets/icons/tag_bottom_bar.svg');

  /// File path: assets/icons/tag_selected_bottom_bar.svg
  SvgGenImage get tagSelectedBottomBar =>
      const SvgGenImage('assets/icons/tag_selected_bottom_bar.svg');

  /// List of all assets
  List<dynamic> get values => [
        arrowLeft,
        card,
        coffeeBottomBar,
        coffeeSelectedBottomBar,
        eyeSlash,
        homeBottomBar,
        homeSelectedBottomBar,
        notificationBing,
        notification,
        profile,
        profileBottomBar,
        profleSelectedBottomBar,
        securitySafe,
        tagBottomBar,
        tagSelectedBottomBar
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Facebook.png
  AssetGenImage get facebook =>
      const AssetGenImage('assets/images/Facebook.png');

  /// File path: assets/images/Google.png
  AssetGenImage get google => const AssetGenImage('assets/images/Google.png');

  /// File path: assets/images/Logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/Logo.png');

  /// File path: assets/images/Twitter.png
  AssetGenImage get twitter => const AssetGenImage('assets/images/Twitter.png');

  /// File path: assets/images/Wechat.png
  AssetGenImage get wechat => const AssetGenImage('assets/images/Wechat.png');

  /// File path: assets/images/Welcome.png
  AssetGenImage get welcome => const AssetGenImage('assets/images/Welcome.png');

  /// File path: assets/images/Welcome2.png
  AssetGenImage get welcome2 =>
      const AssetGenImage('assets/images/Welcome2.png');

  /// File path: assets/images/Whatsapp.png
  AssetGenImage get whatsapp =>
      const AssetGenImage('assets/images/Whatsapp.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [facebook, google, logo, twitter, wechat, welcome, welcome2, whatsapp];
}

class Assets {
  Assets._();

  static const $AssetsAnimationsGen animations = $AssetsAnimationsGen();
  static const AssetGenImage icLauncher =
      AssetGenImage('assets/ic_launcher.png');
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();

  /// List of all assets
  static List<AssetGenImage> get values => [icLauncher];
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size = null,
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size = null,
  }) : _isVecFormat = true;

  final String _assetName;

  final Size? size;
  final bool _isVecFormat;

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
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture(
      _isVecFormat
          ? AssetBytesLoader(_assetName,
              assetBundle: bundle, packageName: package)
          : SvgAssetLoader(_assetName,
              assetBundle: bundle, packageName: package),
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
