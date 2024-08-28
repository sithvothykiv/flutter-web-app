import 'package:infinity_web_app/common/base_view.dart';
import 'package:flutter/material.dart';
import 'package:infinity_web_app/widgets/custom_text_widget.dart';

class ArticleWidget extends BaseView {
  String? title;
  String? text;

  ArticleWidget({
    this.title,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextWidget(
            text: title,
            fontSize: 25,
            isBold: true,
          ),
          SizedBox(height: 10),
          CustomTextWidget(
            text: text,
            fontSize: 15,
          ),
        ],
      ),
    );
  }
}
