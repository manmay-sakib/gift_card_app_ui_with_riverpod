import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:gift_card_app_ui_with_riverpod/gen/fonts.gen.dart';
import '../gen/colors.gen.dart';

class AppText extends Text {
  final Color? color;
  final FontWeight? fontWeight;
  final double fontSize;

  AppText.title(
    String data, {
    Key? key,
    this.color = ColorName.primaryColor,
    this.fontWeight = FontWeight.bold,
    this.fontSize = 26,
  }) : super(
          data,
          key: key,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: color,
            fontFamily: FontFamily.playfair,
            fontWeight: fontWeight,
            fontSize: fontSize,
          ),
        );
  AppText.large(
    String data, {
    Key? key,
    this.color = ColorName.primaryColor,
    this.fontWeight = FontWeight.bold,
    this.fontSize = 24,
  }) : super(
          data,
          key: key,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: color,
            fontFamily: FontFamily.merriweather,
            fontWeight: fontWeight,
            fontSize: fontSize,
          ),
        );
  AppText.medium(
    String data, {
    Key? key,
    this.color = ColorName.primaryColor,
    this.fontWeight = FontWeight.w600,
    this.fontSize = 14,
  }) : super(
          data,
          key: key,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: color,
            fontFamily: FontFamily.merriweather,
            fontWeight: fontWeight,
            fontSize: fontSize,
          ),
        );
  AppText.small(
    String data, {
    Key? key,
    this.color = ColorName.primaryColor,
    this.fontWeight = FontWeight.bold,
    this.fontSize = 12,
  }) : super(
          data,
          key: key,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: color,
            fontFamily: FontFamily.merriweather,
            fontWeight: fontWeight,
            fontSize: fontSize,
          ),
        );
}
