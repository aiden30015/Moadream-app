import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MoaIcon {
  MoaIcon._();

  /// Generic loader for an svg asset.
  static Widget fromAsset(
    String asset, {
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
    Alignment alignment = Alignment.center,
  }) {
    return SvgPicture.asset(
      asset,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      semanticsLabel: semanticsLabel,
      colorFilter: color != null
          ? ColorFilter.mode(color, BlendMode.srcIn)
          : null,
    );
  }

  static Widget logo({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
  }) {
    return Image.asset(
      'assets/images/logo.png',
      width: width,
      height: height,
      fit: fit,
      alignment: Alignment.center,
      color: color,
      semanticLabel: semanticsLabel,
    );
  }

  static Widget apple({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
  }) {
    return Image.asset(
      'assets/images/apple_logo.png',
      width: width,
      height: height,
      fit: fit,
      alignment: Alignment.center,
      color: color,
      semanticLabel: semanticsLabel,
    );
  }

  static Widget kakao({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
  }) {
    return Image.asset(
      'assets/images/kakao_logo.png',
      width: width,
      height: height,
      fit: fit,
      alignment: Alignment.center,
      color: color,
      semanticLabel: semanticsLabel,
    );
  }

  static Widget back_arrow({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
  }) {
    return fromAsset(
      'assets/images/back_button.svg',
      width: width,
      height: height,
      fit: fit,
      alignment: Alignment.center,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  static Widget arrow({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
  }) {
    return fromAsset(
      'assets/images/arrow.svg',
      width: width,
      height: height,
      fit: fit,
      alignment: Alignment.center,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  static Widget electric({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
  }) {
    return fromAsset(
      'assets/images/electric_icon.svg',
      width: width,
      height: height,
      fit: fit,
      alignment: Alignment.center,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  static Widget water({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
  }) {
    return fromAsset(
      'assets/images/water_icon.svg',
      width: width,
      height: height,
      fit: fit,
      alignment: Alignment.center,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  static Widget cloud({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
  }) {
    return fromAsset(
      'assets/images/cloud_icon.svg',
      width: width,
      height: height,
      fit: fit,
      alignment: Alignment.center,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  static Widget stream_charge({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
  }) {
    return fromAsset(
      'assets/images/stream_charge.svg',
      width: width,
      height: height,
      fit: fit,
      alignment: Alignment.center,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  static Widget benefits_news({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
  }) {
    return Image.asset(
      'assets/images/benefits_news.png',
      width: width,
      height: height,
      fit: fit,
      alignment: Alignment.center,
      color: color,
      semanticLabel: semanticsLabel,
    );
  }

  static Widget up_arrow({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
  }) {
    return fromAsset(
      'assets/images/up_arrow.svg',
      width: width,
      height: height,
      fit: fit,
      alignment: Alignment.center,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  static Widget down_arrow({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
  }) {
    return fromAsset(
      'assets/images/down_arrow.svg',
      width: width,
      height: height,
      fit: fit,
      alignment: Alignment.center,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  static Widget home({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
  }) {
    return fromAsset(
      'assets/images/home.svg',
      width: width,
      height: height,
      fit: fit,
      alignment: Alignment.center,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  static Widget menu({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
  }) {
    return fromAsset(
      'assets/images/menu.svg',
      width: width,
      height: height,
      fit: fit,
      alignment: Alignment.center,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  static Widget menu_grid({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
  }) {
    return fromAsset(
      'assets/images/menu_grid.svg',
      width: width,
      height: height,
      fit: fit,
      alignment: Alignment.center,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  static Widget profile({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
  }) {
    return fromAsset(
      'assets/images/profile.svg',
      width: width,
      height: height,
      fit: fit,
      alignment: Alignment.center,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  static Widget chat_fill({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
  }) {
    return fromAsset(
      'assets/images/chat_fill.svg',
      width: width,
      height: height,
      fit: fit,
      alignment: Alignment.center,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  static Widget chat_outline({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
  }) {
    return fromAsset(
      'assets/images/chat_outline.svg',
      width: width,
      height: height,
      fit: fit,
      alignment: Alignment.center,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  static Widget detail_coin_fill({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
  }) {
    return fromAsset(
      'assets/images/detail_coin_fill.svg',
      width: width,
      height: height,
      fit: fit,
      alignment: Alignment.center,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  static Widget detail_coin_outline({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
  }) {
    return fromAsset(
      'assets/images/detail_coin_outline.svg',
      width: width,
      height: height,
      fit: fit,
      alignment: Alignment.center,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  static Widget receipt({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
  }) {
    return fromAsset(
      'assets/images/receipt.svg',
      width: width,
      height: height,
      fit: fit,
      alignment: Alignment.center,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  static Widget add({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
  }) {
    return fromAsset(
      'assets/images/add.svg',
      width: width,
      height: height,
      fit: fit,
      alignment: Alignment.center,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  static Widget detail_coin_outline_black({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
  }) {
    return fromAsset(
      'assets/images/detail_coin_outline_black.svg',
      width: width,
      height: height,
      fit: fit,
      alignment: Alignment.center,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  static Widget edit({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
  }) {
    return fromAsset(
      'assets/images/edit.svg',
      width: width,
      height: height,
      fit: fit,
      alignment: Alignment.center,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  static Widget exit({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
  }) {
    return fromAsset(
      'assets/images/exit.svg',
      width: width,
      height: height,
      fit: fit,
      alignment: Alignment.center,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }

  static Widget wallet({
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
  }) {
    return fromAsset(
      'assets/images/wallet.svg',
      width: width,
      height: height,
      fit: fit,
      alignment: Alignment.center,
      color: color,
      semanticsLabel: semanticsLabel,
    );
  }
}
