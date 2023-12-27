/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/SteeringWheel.png
  AssetGenImage get steeringWheel =>
      const AssetGenImage('assets/images/SteeringWheel.png');

  $AssetsImagesIconsGen get icons => const $AssetsImagesIconsGen();
  $AssetsImagesMenuGen get menu => const $AssetsImagesMenuGen();
  $AssetsImagesNavigationGen get navigation =>
      const $AssetsImagesNavigationGen();
  $AssetsImagesQuizGen get quiz => const $AssetsImagesQuizGen();
  $AssetsImagesSosmedGen get sosmed => const $AssetsImagesSosmedGen();

  /// List of all assets
  List<AssetGenImage> get values => [steeringWheel];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/cup.json
  String get cup => 'assets/lottie/cup.json';

  $AssetsLottieOnboardingGen get onboarding =>
      const $AssetsLottieOnboardingGen();

  /// File path: assets/lottie/success.json
  String get success => 'assets/lottie/success.json';

  /// List of all assets
  List<String> get values => [cup, success];
}

class $AssetsImagesIconsGen {
  const $AssetsImagesIconsGen();

  /// File path: assets/images/icons/iconhand.png
  AssetGenImage get iconhand =>
      const AssetGenImage('assets/images/icons/iconhand.png');

  /// List of all assets
  List<AssetGenImage> get values => [iconhand];
}

class $AssetsImagesMenuGen {
  const $AssetsImagesMenuGen();

  /// File path: assets/images/menu/AboutUs.png
  AssetGenImage get aboutUs =>
      const AssetGenImage('assets/images/menu/AboutUs.png');

  /// File path: assets/images/menu/Encyclopedia.png
  AssetGenImage get encyclopedia =>
      const AssetGenImage('assets/images/menu/Encyclopedia.png');

  /// File path: assets/images/menu/Quiz.png
  AssetGenImage get quiz => const AssetGenImage('assets/images/menu/Quiz.png');

  /// File path: assets/images/menu/TipsTrick.png
  AssetGenImage get tipsTrick =>
      const AssetGenImage('assets/images/menu/TipsTrick.png');

  /// List of all assets
  List<AssetGenImage> get values => [aboutUs, encyclopedia, quiz, tipsTrick];
}

class $AssetsImagesNavigationGen {
  const $AssetsImagesNavigationGen();

  /// File path: assets/images/navigation/history.png
  AssetGenImage get history =>
      const AssetGenImage('assets/images/navigation/history.png');

  /// File path: assets/images/navigation/home.png
  AssetGenImage get home =>
      const AssetGenImage('assets/images/navigation/home.png');

  /// File path: assets/images/navigation/materi.png
  AssetGenImage get materi =>
      const AssetGenImage('assets/images/navigation/materi.png');

  /// File path: assets/images/navigation/profile.png
  AssetGenImage get profile =>
      const AssetGenImage('assets/images/navigation/profile.png');

  /// List of all assets
  List<AssetGenImage> get values => [history, home, materi, profile];
}

class $AssetsImagesQuizGen {
  const $AssetsImagesQuizGen();

  /// File path: assets/images/quiz/GeneralTest.png
  AssetGenImage get generalTest =>
      const AssetGenImage('assets/images/quiz/GeneralTest.png');

  /// File path: assets/images/quiz/PsychoTest.png
  AssetGenImage get psychoTest =>
      const AssetGenImage('assets/images/quiz/PsychoTest.png');

  /// File path: assets/images/quiz/TrafficTest.png
  AssetGenImage get trafficTest =>
      const AssetGenImage('assets/images/quiz/TrafficTest.png');

  /// List of all assets
  List<AssetGenImage> get values => [generalTest, psychoTest, trafficTest];
}

class $AssetsImagesSosmedGen {
  const $AssetsImagesSosmedGen();

  /// File path: assets/images/sosmed/logo-apple.png
  AssetGenImage get logoApple =>
      const AssetGenImage('assets/images/sosmed/logo-apple.png');

  /// File path: assets/images/sosmed/logo-facebook.png
  AssetGenImage get logoFacebook =>
      const AssetGenImage('assets/images/sosmed/logo-facebook.png');

  /// File path: assets/images/sosmed/logo-google.png
  AssetGenImage get logoGoogle =>
      const AssetGenImage('assets/images/sosmed/logo-google.png');

  /// List of all assets
  List<AssetGenImage> get values => [logoApple, logoFacebook, logoGoogle];
}

class $AssetsLottieOnboardingGen {
  const $AssetsLottieOnboardingGen();

  /// File path: assets/lottie/onboarding/onboarding1.json
  String get onboarding1 => 'assets/lottie/onboarding/onboarding1.json';

  /// File path: assets/lottie/onboarding/onboarding2.json
  String get onboarding2 => 'assets/lottie/onboarding/onboarding2.json';

  /// File path: assets/lottie/onboarding/onboarding3.json
  String get onboarding3 => 'assets/lottie/onboarding/onboarding3.json';

  /// List of all assets
  List<String> get values => [onboarding1, onboarding2, onboarding3];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
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
