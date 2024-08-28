import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinity_web_app/page/about_us/components/achievement.dart';
import 'package:infinity_web_app/page/about_us/components/mission_and_vision.dart';
import 'package:infinity_web_app/page/main/components/footer.dart';
import 'package:infinity_web_app/page/main/components/header_widget.dart';
import 'package:infinity_web_app/res/my_colors.dart';
import 'package:infinity_web_app/widgets/custom_text_widget.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'components/our_office.dart';

class AboutUsDetailPage extends StatelessWidget {
  static const String routeName = '/about_us';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Column(
        children: [
          HeaderWidget(),
          Expanded(
            child: ScrollablePositionedList.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(height: 50),
                    CustomTextWidget(
                      text: 'ABOUT US',
                      textType: TextType.MainTitle,
                      fontColor: MyColors.black,
                      isBold: true,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: Get.height * 0.9,
                      child: RichText(
                        textAlign: TextAlign.center,
                        maxLines: 4,
                        text: TextSpan(
                          style: TextStyle(fontSize: 18, height: 1.4),
                          children: [
                            TextSpan(text: "With our group of talented and innovative people who passionate about Technology based in Cambodia. "),
                            TextSpan(text: " We’re one of the leading full-stack tech solution agency in Asian focused on delivering the"),
                            TextSpan(
                                text:
                                    "finest and most significant results to fulfill the client’s requirements. We’ve experience in many different projects, platforms, and business fields such as Financial, Banking, Entertainment, Services, etc.")
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    MissionAndVision(),
                    OurOffice(),
                    Achievement(),
                    Footer(),
                  ],
                );
              },
              shrinkWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
