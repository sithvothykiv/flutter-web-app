import 'package:get/get.dart';
import 'package:infinity_web_app/common/base_view.dart';
import 'package:flutter/material.dart';
import 'package:infinity_web_app/page/blogs/blog_page.dart';
import 'package:infinity_web_app/page/blogs/components/blog_widget.dart';
import 'package:infinity_web_app/res/my_colors.dart';
import 'package:infinity_web_app/responsive.dart';
import 'package:infinity_web_app/src/app_color.dart';
import 'package:infinity_web_app/widgets/custom_text_widget.dart';
import 'package:infinity_web_app/widgets/see_more_widget.dart';

import '../../../res/res.dart';

class Blog extends BaseView {
  var isSeeMore = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        margin: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: [
            CustomTextWidget(
              text: 'BLOGS',
              textType: TextType.MainTitle,
              fontColor: MyColors.black,
              isBold: true,
            ),
            SizedBox(height: 50),
            CustomTextWidget(
              text: 'As a premier New York-based website and continues to nurture a multi-channel',
              fontSize: 18,
              fontColor: MyColors.black,
            ),
            SizedBox(height: 30),
            /*SizedBox(
              width: double.infinity,
              height: isSeeMore.value ? (!Responsive.isMobile(context) ? Get.height * 0.8 : Get.height * 2.4) : (!Responsive.isMobile(context) ? Get.height * 0.4 : Get.height * 0.42),
              */ /*isSeeMore.value
                  ? (Responsive.isDesktop(context)
                      ? Get.height * 0.8
                      : Responsive.isTablet(context)
                          ? 1100
                          : 1750)
                  : (Responsive.isDesktop(context)
                      ? Get.width * 0.15
                      : Responsive.isTablet(context)
                          ? 400
                          : 700),*/ /*
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: isSeeMore.value
                    ? 6
                    : (Responsive.isDesktop(context))
                        ? 3
                        : 2,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: (Responsive.isDesktop(context))
                      ? 3
                      : (Responsive.isTablet(context))
                          ? 2
                          : 1,
                  childAspectRatio: (Responsive.isDesktop(context))
                      ? Get.width / (Get.height * 1.35)
                      : (Responsive.isMobile(context))
                          ? Get.width / (Get.height * 0.5)
                          : Get.width / (Get.height * 1),
                  crossAxisSpacing: (Responsive.isDesktop(context)) ? 25 : 15,
                  mainAxisSpacing: (Responsive.isDesktop(context)) ? 23 : 18,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    height: Get.width * 0.15,
                    decoration: BoxDecoration(
                      color: InfinityColor.colorWhite,
                      border: Border.all(
                        color: InfinityColor.colorDarkBorder,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          Res.shamu_image,
                          fit: BoxFit.fitWidth,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: CustomTextWidget(
                            text: 'Winning Content Strategy for 2022: Thought Leadership',
                            isBold: true,
                            fontSize: 20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: CustomTextWidget(
                            text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elitsed do eiusmodtempor incididunt ut labore et …….',
                            isBold: true,
                            fontSize: 15,
                            fontColor: MyColors.grey_text,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: CustomTextWidget(
                            text: '14-July-2022',
                            isBold: true,
                            fontSize: 10,
                            fontColor: MyColors.grey_text.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),*/
            Row(
              children: [
                BlogWidget(),
              ],
            ),
            SizedBox(height: Responsive.isDesktop(context) ? 30 : 15),
            SeeMoreWidget(
              isSeeMore: false,
              onTap: () {
                Get.toNamed(BlogPage.routeName);
                //isSeeMore.value = !isSeeMore.value;
              },
            ),
          ],
        ),
      ),
    );
  }
}
