import 'package:infinity_web_app/common/base_view.dart';
import 'package:flutter/material.dart';
import 'package:infinity_web_app/res/my_colors.dart';
import 'package:infinity_web_app/widgets/custom_text_widget.dart';

class BlogWidget extends BaseView {
  String? image;
  String? title;
  String? text;
  String? date;
  void Function()? onTap;

  BlogWidget({
    this.image,
    this.title,
    this.text,
    this.date,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: MyColors.color_dbdbdb, width: 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image ?? ''),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: CustomTextWidget(
                text: title,
                //fontSize: 18,
                fontColor: MyColors.black,
                isBold: true,
                maxLine: 2,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: CustomTextWidget(
                  text: text,
                  fontColor: MyColors.grey_text,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: CustomTextWidget(
                text: date,
                fontColor: MyColors.grey_text.withOpacity(0.5),
                fontSize: 12,
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
