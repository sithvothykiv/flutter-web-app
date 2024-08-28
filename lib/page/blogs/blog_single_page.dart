import 'package:get/get.dart';
import 'package:infinity_web_app/common/base_view.dart';
import 'package:flutter/material.dart';
import 'package:infinity_web_app/page/blogs/blog_page.dart';
import 'package:infinity_web_app/page/blogs/components/blog_widget.dart';
import 'package:infinity_web_app/res/my_colors.dart';
import 'package:infinity_web_app/res/res.dart';
import 'package:infinity_web_app/responsive.dart';
import 'package:infinity_web_app/widgets/custom_text_widget.dart';
import 'package:infinity_web_app/widgets/see_more_widget.dart';

import 'dart:html';

class BlogSinglePage extends BaseView {
  static const String routeName = '/lib/page/blogs/BlogSinglePage';
  var isSeeMore = false.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      child: Column(
        children: [
          Text(
            'BLOGS',
            style: TextStyle(
              fontSize: (Responsive.isDesktop(context) ? 70 : 50),
              color: MyColors.black,
              fontFamily: "SF Pro",
              height: 1,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            width: Get.height * 0.8,
            child: CustomTextWidget(
              text: 'As a premier New York-based website and continues to nurture a multi-channel.',
              fontSize: 18,
              fontColor: MyColors.grey_text,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            height: Responsive.isDesktop(context)
                ? 350
                : Responsive.isMobile(context)
                    ? 300
                    : 350,
            child: GridView.builder(
              itemCount: Responsive.isDesktop(context) ? 3 : 2,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: (Responsive.isDesktop(context)) ? 3 : 2,
                childAspectRatio: (Responsive.isDesktop(context))
                    ? (Get.width * 0.55) / (Get.height * 0.65)
                    : (Responsive.isMobile(context))
                        ? Get.width / (Get.height * 0.9)
                        : Get.width / (Get.height * 0.9),
                crossAxisSpacing: (Responsive.isDesktop(context)) ? 25 : 15,
                mainAxisSpacing: (Responsive.isDesktop(context)) ? 23 : 18,
              ),
              itemBuilder: (context, index) {
                return BlogWidget(
                  image: Res.shamu_image,
                  title:
                      'Lorem ipsum dolor sit amet, consec tetur adipiscing elitsed do eiusmod tempor incididunt ut labore et Lorem ipsum dolorsit ametipsum dolor sit amet,  ut labore et Lorem ipsum dolor…….',
                  text:
                      'Lorem ipsum dolor sit amet, consec tetur adipiscing elitsed do eiusmod tempor incididunt ut labore et Lorem ipsum dolorsit ametipsum dolor sit amet,  ut labore et Lorem ipsum dolor…….',
                  date: '01-Aug-2022',
                );
              },
            ),
          ),
          SizedBox(height: Responsive.isDesktop(context) ? 25 : 15),
          SeeMoreWidget(
              isSeeMore: false,
              onTap: () {
                print("Connection Status:${window.navigator.onLine}");
                Get.toNamed(BlogPage.routeName);
                //if (_controller.selectedIndex == 1) {
                //Get.to(AboutUsPage());
                //}
              }),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
