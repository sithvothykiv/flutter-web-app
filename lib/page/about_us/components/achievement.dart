import 'package:get/get.dart';
import 'package:infinity_web_app/common/base_view.dart';
import 'package:flutter/material.dart';
import 'package:infinity_web_app/res/my_colors.dart';
import 'package:infinity_web_app/res/res.dart';
import 'package:infinity_web_app/responsive.dart';
import 'package:infinity_web_app/widgets/custom_text_widget.dart';

class Achievement extends BaseView {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      margin: EdgeInsets.symmetric(vertical: 0),
      width: Get.width,
      decoration: BoxDecoration(color: MyColors.app_sub),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
              child: Image.asset(
                Res.achievement_gif,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 100, horizontal: !Responsive.isMobile(context) ? 100 : 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomTextWidget(
                    text: 'ACHIEVEMENT',
                    fontColor: MyColors.white,
                    textType: TextType.SecondSubTitle,
                    isBold: true,
                  ),
                  CustomTextWidget(
                    text:
                        'As a premier New York-based website design and development company, Lounge Lizard has created and continues to nurture a multi-channel digital marketing agency with super creative proficiency in all things marketing-related. From industry-leading digital design and development to maximized social.',
                    isBold: true,
                    fontSize: 18,
                    textAlign: TextAlign.end,
                  ),
                  CustomTextWidget(
                    text:
                        'As a premier New York-based website design and development company, Lounge Lizard has created and continues to nurture a multi-channel digital marketing agency with super creative proficiency in all things marketing-related. From industry-leading digital design and development to maximized social. As a premier New York-based website design and development company, Lounge Lizard has created and continues to nurture a multi-channel digital marketing agency with super creative proficiency in all things',
                    fontColor: MyColors.black,
                    fontSize: 18,
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
