import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:infinity_web_app/common/base_view.dart';
import 'package:flutter/material.dart';
import 'package:infinity_web_app/constants.dart';
import 'package:infinity_web_app/page/main/components/header_widget.dart';
import 'package:infinity_web_app/res/my_colors.dart';
import 'package:infinity_web_app/res/res.dart';
import 'package:infinity_web_app/responsive.dart';
import 'package:infinity_web_app/widgets/custom_text_widget.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class JoinUs extends BaseView {
  static const String routeName = '/join_us';

  List<BenefitsModel> list = [
    BenefitsModel(
      icon: Res.work_accident_icon,
      title: 'Work Accident Insurance Coverage',
    ),
    BenefitsModel(
      icon: Res.attendance_bonus_icon,
      title: 'Attendance Bonus (Monthly)',
    ),
    BenefitsModel(
      icon: Res.holiday_bonus_icon,
      title: 'Holidays Bonus (Monthly)',
    ),
    BenefitsModel(
      icon: Res.team_building_icon,
      title: 'Team-building & Annual Party',
    ),
    BenefitsModel(
      icon: Res.work_accessories_icon,
      title: 'Work Accessories Provided',
    ),
    BenefitsModel(
      icon: Res.friendly_and_flexible_icon,
      title: 'Friendly & Flexible Environment',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: _buildBody(context),
    );
  }

  _buildBody(BuildContext context) {
    return Container(
      child: Column(
        children: [
          HeaderWidget(),
          Expanded(
            child: ScrollablePositionedList.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: !Responsive.isMobile(context) ? 100 : 30),
                  child: Column(
                    children: [
                      SizedBox(height: 50),
                      CustomTextWidget(
                        text: 'WORK BENEFITS',
                        textType: TextType.MainTitle,
                        isBold: true,
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                        height: Responsive.isDesktop(context)
                            ? 550
                            : Responsive.isTablet(context)
                                ? 550
                                : 1200,
                        child: GridView.builder(
                          itemCount: 6,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: (Responsive.isDesktop(context))
                                ? 3
                                : (Responsive.isTablet(context))
                                    ? 2
                                    : 1,
                            childAspectRatio: (Responsive.isDesktop(context))
                                ? Get.width / (Get.height * 0.9)
                                : (Responsive.isMobile(context))
                                    ? Get.width / (Get.height * 0.2)
                                    : Get.width / (Get.height * 0.4),
                            crossAxisSpacing: (Responsive.isDesktop(context)) ? 25 : 15,
                            mainAxisSpacing: (Responsive.isDesktop(context)) ? 23 : 18,
                          ),
                          itemBuilder: (context, index) {
                            return Container(
                              padding: Responsive.isDesktop(context) ? EdgeInsets.symmetric(horizontal: 30, vertical: 30) : EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              decoration: BoxDecoration(
                                border: Border.all(color: MyColors.color_dbdbdb, width: 1),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(
                                    list[index].icon ?? '',
                                    width: (Responsive.isDesktop(context)) ? 80 : 50,
                                    height: (Responsive.isDesktop(context)) ? 80 : 50,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    list[index].title!,
                                    style: TextStyle(
                                      fontSize: Responsive.isDesktop(context) ? 26 : 22,
                                      fontFamily: "Raleway",
                                      color: kDarkBlackColor,
                                      height: 1,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 50),
                      CustomTextWidget(
                        text: 'OPEN POSITIONS',
                        textType: TextType.MainTitle,
                        isBold: true,
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                        width: Get.width * 0.6,
                        child: CustomTextWidget(
                          text:
                              'As a premier New York-based website design and development company, Lounge Lizard has created and continues to nurture a multi-channel digital marketing agency with super creative proficiency in all things marketing-related. From industry-leading digital design and development to maximized socia',
                          fontSize: 18,
                          textAlign: TextAlign.center,
                          fontColor: MyColors.grey_text,
                        ),
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                        height: Responsive.isDesktop(context)
                            ? Get.height
                            : Responsive.isTablet(context)
                                ? 1600
                                : 1650,
                        child: GridView.builder(
                          itemCount: 6,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: (Responsive.isDesktop(context)) ? 2 : 1,
                            childAspectRatio: (Responsive.isDesktop(context))
                                ? Get.width / (Get.height * 0.6)
                                : (Responsive.isMobile(context))
                                    ? Get.width / (Get.height * 0.35)
                                    : Get.width / (Get.height * 0.4),
                            crossAxisSpacing: (Responsive.isDesktop(context)) ? 25 : 15,
                            mainAxisSpacing: (Responsive.isDesktop(context)) ? 23 : 18,
                          ),
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: MyColors.color_dbdbdb,
                                  width: 1,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomTextWidget(
                                    text: 'Front-End Development, Vue JS',
                                    isBold: true,
                                    fontSize: 25,
                                    fontColor: MyColors.app_main,
                                  ),
                                  SizedBox(height: 10),
                                  Expanded(
                                    child: CustomTextWidget(
                                      text:
                                          'Lorem ipsum dolor sit amet, consec tetur adipiscing elitsed do eiusmod tempor incididunt ut labore et Lorem ipsum dolorsit ametipsum dolor sit amet,  ut labore et Lorem ipsum dolor…….',
                                      fontSize: 18,
                                      fontColor: MyColors.grey_text,
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomTextWidget(
                                        text: '01-Aug-2022',
                                        fontColor: MyColors.grey_text.withOpacity(0.5),
                                        fontSize: 15,
                                      ),
                                      Expanded(
                                        child: SizedBox(),
                                      ),
                                      CustomTextWidget(
                                        text: 'See more',
                                        fontColor: MyColors.app_main,
                                        fontSize: 18,
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        height: 10,
                                        width: 10,
                                        child: SvgPicture.asset(
                                          Res.icon_right_green,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 60),
                    ],
                  ),
                );
              },
              //itemScrollController: _controller.itemHomePageScrollController,
              //itemPositionsListener: _controller.itemHomePagePositionsListener,
              shrinkWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}

class BenefitsModel {
  String? icon;
  String? title;

  BenefitsModel({
    this.icon,
    this.title,
  });
}
