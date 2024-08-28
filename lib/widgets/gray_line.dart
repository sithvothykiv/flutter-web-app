import 'package:flutter/material.dart';
import 'package:infinity_web_app/res/my_colors.dart';

class GrayLine extends StatelessWidget {
  EdgeInsetsGeometry? margin;
  Color? color;

  GrayLine({
    Key? key,
    this.margin,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: 1,
      color: color ?? MyColors.color_6c6c6c,
    );
  }
}
