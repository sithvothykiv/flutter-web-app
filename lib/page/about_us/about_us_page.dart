import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinity_web_app/page/about_us/about_us_detail_page.dart';
import 'package:infinity_web_app/res/my_colors.dart';
import 'package:infinity_web_app/res/res.dart';
import 'package:infinity_web_app/responsive.dart';
import 'package:infinity_web_app/widgets/custom_text_widget.dart';
import 'package:infinity_web_app/widgets/see_more_widget.dart';

class AboutUsPage extends StatefulWidget {
  static const String routeName = '/lib/page/about_us/AboutUsPage';

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return AboutUsSubPage();
  }
}

class AboutUsSubPage extends StatelessWidget {
  /*AboutUsSubPage(this.controller);
  final MenuController controller;
  */
  var isCursorOn = false.obs;

  List<String> imageList = [
    Res.mission_and_vision_image,
    Res.our_office_image,
    Res.achievement_image,
    Res.mission_and_vision_image,
    Res.our_office_image,
    Res.achievement_image,
  ];

  List<String> titleList = [
    'MISSION & VISION',
    'OUR OFFICE',
    'ACHIEVEMENT',
    'MISSION & VISION',
    'OUR OFFICE',
    'ACHIEVEMENT',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      child: Column(
        children: [
          Text(
            'ABOUT US',
            style: TextStyle(
              fontSize: (Responsive.isDesktop(context) ? 70 : 50),
              color: MyColors.black,
              fontFamily: "SF Pro",
              height: 1,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: 700,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(fontSize: 18),
                children: [
                  TextSpan(text: "With our group of talented and innovative people who passionate about Technology"),
                  TextSpan(
                    text: " based in Cambodia",
                    style: TextStyle(color: MyColors.green_accent, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: ". We're one of the"),
                  TextSpan(
                    text: " leading full-stack tech solution agency in Asian ",
                    style: TextStyle(color: MyColors.green_accent, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "focused on delivering the finest and most significant results to fulfill the client’s requirements."),
                ],
              ),
            ),
          ),
          SizedBox(height: 40),
          SizedBox(
            width: double.infinity,
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: 3,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: (!Responsive.isMobile(context)) ? 3 : 2,
                childAspectRatio: (Responsive.isDesktop(context))
                    ? (Get.width) / (Get.height * 2)
                    : (Responsive.isMobile(context))
                        ? Get.width / (Get.height * 0.8)
                        : Get.width / (Get.height * 1.5),
                crossAxisSpacing: (Responsive.isDesktop(context)) ? 25 : 15,
                mainAxisSpacing: (Responsive.isDesktop(context)) ? 23 : 18,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onHover: (value) {
                    isCursorOn.value = value;
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imageList[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: CustomTextWidget(
                      text: titleList[index],
                      fontColor: MyColors.white,
                      fontSize: 20,
                      isBold: true,
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: Responsive.isDesktop(context) ? 25 : 15),
          SeeMoreWidget(
              isSeeMore: false,
              onTap: () {
                _onMenuIndexTapped(1);
                Get.toNamed(AboutUsDetailPage.routeName);
              }),
        ],
      ),
    );
  }

  _onMenuIndexTapped(int index) {
    //this.controller.itemHomePageScrollController.value.scrollTo(index: index, duration: Duration(seconds: 2), curve: Curves.ease);
  }
}
