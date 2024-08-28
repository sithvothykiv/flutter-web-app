import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:infinity_web_app/common/base_view.dart';
import 'package:infinity_web_app/res/my_colors.dart';
import 'package:infinity_web_app/res/res.dart';
import 'package:infinity_web_app/responsive.dart';
import 'package:infinity_web_app/widgets/custom_text_widget.dart';
import 'package:infinity_web_app/widgets/gray_line.dart';

class Footer extends BaseView {
  static const String routeName = '/lib/page/main/footer';

  List<String> siteMapList = ['Our Service', 'About us', 'Project', 'Blog', 'Join us', 'Contact us'];
  List<String> ourService = ['Mobile App Development', 'Mobile Games Development', 'Web Development', 'UX/UI & Web Design', 'Digital Marketing', 'Creative Solution'];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      //height: 100,
      padding: EdgeInsets.only(top: 50),
      margin: EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
        color: MyColors.footer_color,
      ),
      child: Responsive(
        ///Desktop Mode
        desktop: Container(
          padding: EdgeInsets.symmetric(horizontal: 100),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisSize: MainAxisSize.min,
                children: [
                  _shortDesc(context),
                  _siteMap(context),
                  _ourService(context),
                ],
              ),
              GrayLine(
                margin: EdgeInsets.only(top: 50),
              ),
              Container(
                height: 70,
                alignment: Alignment.center,
                child: CustomTextWidget(
                  text: '©2021 Infinity Information & Apps Dev Co., Ltd. All rights reserved.',
                  fontColor: MyColors.white.withOpacity(0.5),
                ),
              ),
            ],
          ),
        ),

        ///Mobile Mode
        mobile: Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _ourService(context),
                  _siteMap(context),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              _shortDesc(context),
              GrayLine(
                margin: EdgeInsets.only(top: 50),
              ),
              Container(
                height: 70,
                alignment: Alignment.center,
                child: CustomTextWidget(
                  text: '©2021 Infinity Information & Apps Dev Co., Ltd. All rights reserved.',
                  fontColor: MyColors.white.withOpacity(0.5),
                ),
              ),
            ],
          ),
        ),

        ///Tablet Mode
        tablet: Container(
          padding: EdgeInsets.symmetric(horizontal: 100),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisSize: MainAxisSize.min,
                children: [
                  _shortDesc(context),
                  _siteMap(context),
                ],
              ),
              GrayLine(
                margin: EdgeInsets.only(top: 50),
              ),
              Container(
                height: 70,
                alignment: Alignment.center,
                child: CustomTextWidget(
                  text: '©2021 Infinity Information & Apps Dev Co., Ltd. All rights reserved.',
                  fontColor: MyColors.white.withOpacity(0.5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _shortDesc(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(Res.logo_icon),
          Container(
            width: 300,
            margin: EdgeInsets.symmetric(vertical: 20),
            child: CustomTextWidget(
              text: 'Lorem ipsum dolor sit amet, consec tetur adipiscing elitsed do eiusmod tempor incididunt ut labore et  do tempor incididunt ut labore et ',
              fontSize: 15,
              fontColor: MyColors.white,
              textAlign: TextAlign.start,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Res.facebook_icon,
                height: Responsive.isMobile(context) ? 40 : 60,
              ),
              SvgPicture.asset(
                Res.linkedin_icon,
                height: Responsive.isMobile(context) ? 40 : 60,
              ),
              SvgPicture.asset(
                Res.instagram_icon,
                height: Responsive.isMobile(context) ? 40 : 60,
              ),
              SvgPicture.asset(
                Res.twitter_icon,
                height: Responsive.isMobile(context) ? 40 : 60,
              ),
            ],
          ),
        ],
      ),
    );
  }

  _siteMap(BuildContext context) {
    return Container(
      //color: MyColors.red_accent,
      child: Column(
        crossAxisAlignment: Responsive.isMobile(context) ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          CustomTextWidget(
            text: 'Sitemaps',
            textType: TextType.SecondSubTitle,
            fontColor: MyColors.white,
            textDecoration: TextDecoration.underline,
          ),
          SizedBox(
            height: 30,
          ),
          for (String s in siteMapList)
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: CustomTextWidget(
                text: s,
                fontColor: MyColors.white,
              ),
            ),
        ],
      ),
    );
  }

  _ourService(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: Responsive.isMobile(context) ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          CustomTextWidget(
            text: 'Our Service',
            textType: TextType.SecondSubTitle,
            fontColor: MyColors.white,
            textDecoration: TextDecoration.underline,
          ),
          SizedBox(
            height: 30,
          ),
          for (String s in ourService)
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: CustomTextWidget(
                text: s,
                fontSize: 14,
                fontColor: MyColors.white,
              ),
            ),
        ],
      ),
    );
  }
}
