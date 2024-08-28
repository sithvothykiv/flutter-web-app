import 'package:get/get.dart';
import 'package:infinity_web_app/common/base_view.dart';
import 'package:flutter/material.dart';
import 'package:infinity_web_app/res/my_colors.dart';
import 'package:infinity_web_app/res/res.dart';
import 'package:infinity_web_app/responsive.dart';
import 'package:infinity_web_app/src/app_color.dart';
import 'package:infinity_web_app/widgets/custom_text_widget.dart';

class MissionAndVision extends BaseView {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 600,
      padding: EdgeInsets.symmetric(horizontal: !Responsive.isMobile(context) ? 100 : 30),
      decoration: BoxDecoration(
        color: Color(0xFF3B383C),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextWidget(
                    text: 'MISSION AND VISION',
                    textType: TextType.LargeTitle,
                    fontColor: Color(0xFF5AB8B4),
                    isBold: true,
                  ),
                  SizedBox(height: 20),
                  CustomTextWidget(
                    text: 'Infinity Information & Apps Dev’s mission is to create the greatest technology for everyday life.',
                    isBold: true,
                    fontColor: MyColors.white,
                    fontSize: 18,
                  ),
                  SizedBox(height: 10),
                  CustomTextWidget(
                    text:
                        'Our company ideas support this mission by offering a wide range of well-developed platforms at the most significant price and best quality. Our vision is to build value through employees by creating an atmosphere of optimism, teamwork, creativity, and resourcefulness and by dealing with everyone openly and ethically.',
                    fontColor: MyColors.white,
                    fontSize: 18,
                    maxLine: 5,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              child: Image.asset(
                Res.mission_and_vision_gif,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
