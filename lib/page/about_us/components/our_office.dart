import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinity_web_app/common/base_view.dart';
import 'package:infinity_web_app/res/my_colors.dart';
import 'package:infinity_web_app/responsive.dart';
import 'package:infinity_web_app/widgets/custom_text_widget.dart';

import '../../../res/res.dart';

class OurOffice extends BaseView {
  List<String> imageList = [
    Res.pic_1,
    Res.pic_2,
    Res.pic_3,
    Res.pic_4,
    Res.pic_5,
    Res.pic_6,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50, horizontal: !Responsive.isMobile(context) ? 100 : 30),
      child: Column(
        children: [
          CustomTextWidget(
            text: 'OUR OFFICE',
            textType: TextType.MainTitle,
            fontColor: MyColors.black,
            isBold: true,
          ),
          SizedBox(height: 20),
          SizedBox(
            width: Get.height * 0.8,
            child: RichText(
              textAlign: TextAlign.center,
              maxLines: 3,
              text: TextSpan(
                style: TextStyle(fontSize: 18, height: 1.3),
                children: [
                  TextSpan(text: "As a premier New York-based website"),
                  TextSpan(
                    text: " design and development company, \n",
                    style: TextStyle(color: MyColors.green_accent, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                      text:
                          "Lounge Lizard has created and continues to nurture a multi-channel digital marketing agency with super creative proficiency in all things marketing-related. From industry-leading digital design and development to maximized social."),
                ],
              ),
            ),
          ),
          SizedBox(height: 50),
          SizedBox(
            height: Responsive.isDesktop(context)
                ? Get.width * .55
                : Responsive.isTablet(context)
                    ? Get.width * 1
                    : Get.width * 1.3,
            child: GridView.builder(
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: (Responsive.isDesktop(context))
                    ? 3
                    : (Responsive.isTablet(context))
                        ? 2
                        : 1,
                childAspectRatio: (Responsive.isDesktop(context))
                    ? 1 //Get.width / (Get.height * 0.7)
                    : (Responsive.isMobile(context))
                        ? Get.width / (Get.height * 1)
                        : Get.width / (Get.height * 1),
                crossAxisSpacing: (Responsive.isDesktop(context)) ? 25 : 15,
                mainAxisSpacing: (Responsive.isDesktop(context)) ? 23 : 18,
              ),
              itemBuilder: (context, index) {
                return Image.asset(
                  imageList[index],
                  width: 50,
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
