import 'package:flutter/material.dart';
import 'package:infinity_web_app/common/base_view.dart';
import 'package:infinity_web_app/res/my_colors.dart';
import 'package:infinity_web_app/responsive.dart';

enum TextType { LargeTitle, MainTitle, FirstSubTitle, SecondSubTitle }

class CustomTextWidget extends BaseView {
  String? text;
  double? fontSize;
  Color? fontColor;
  bool? isBold;
  TextAlign? textAlign;
  int? maxLine;
  TextDecoration? textDecoration;
  TextType? textType;

  CustomTextWidget({
    Key? key,
    required this.text,
    this.fontSize,
    this.isBold,
    this.fontColor,
    this.textAlign,
    this.maxLine,
    this.textDecoration,
    this.textType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (textType != null) {
      switch (textType) {
        case TextType.LargeTitle:
          fontSize = Responsive.isMobile(context) ? 40 : 70;
          break;
        case TextType.MainTitle:
          fontSize = Responsive.isMobile(context) ? 30 : 50;
          break;
        case TextType.FirstSubTitle:
          fontSize = Responsive.isMobile(context) ? 25 : 40;
          break;
        case TextType.SecondSubTitle:
          fontSize = Responsive.isMobile(context) ? 20 : 30;
          break;
      }
    }
    return Text(
      text ?? '',
      textAlign: textAlign,
      maxLines: maxLine ?? 3,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: fontSize ?? 14,
        color: fontColor ?? MyColors.black,
        fontWeight: (isBold ?? false) ? FontWeight.bold : FontWeight.normal,
        fontFamily: 'SF Pro',
        decoration: textDecoration ?? TextDecoration.none,
      ),
    );
  }
}
