import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:infinity_web_app/common/base_view.dart';
import 'package:flutter/material.dart';
import 'package:infinity_web_app/page/join_us/join_us.dart';
import 'package:infinity_web_app/res/my_colors.dart';
import 'package:infinity_web_app/res/res.dart';
import 'package:infinity_web_app/responsive.dart';
import 'package:infinity_web_app/widgets/custom_text_widget.dart';

class JoinOurTeam extends BaseView {
  static const String routeName = '/lib/page/home/components/JoinOurTeam';

  @override
  Widget build(BuildContext context) {
    return Container(
        //height: Responsive.isDesktop(context) ? 250 : 400,
        margin: EdgeInsets.only(top: 100, right: 50, left: 50),
        padding: !Responsive.isMobile(context) ? EdgeInsets.symmetric(horizontal: 100) : EdgeInsets.zero,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 5,
              color: MyColors.green_accent,
            ),
          ),
        ),
        child: /*Responsive.isDesktop(context)
          ? */
            Row(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Join Our Team',
                    style: TextStyle(
                      fontSize: (Responsive.isDesktop(context) ? 70 : 50),
                      color: MyColors.black,
                      fontFamily: "SF Pro",
                      height: 1,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 15),
                  CustomTextWidget(
                    text:
                        'Be Part of Infinity Family Lorem ipsum dolor sit amet, consectetur adipiscing elitsed do eiusmod tempor incididunt ut labore Lorem ipsum dolor sit amet, consectetur adipiscing ',
                    fontSize: 15,
                    fontColor: MyColors.grey_text,
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(JoinUs.routeName);
                    },
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(color: MyColors.green_accent),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomTextWidget(
                            text: 'Apply Now',
                            fontColor: MyColors.white,
                            fontSize: Responsive.isMobile(context) ? 15 : 20,
                          ),
                          SizedBox(width: 10),
                          SvgPicture.asset(Res.right_arrow_white, width: 15),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 70),
            Expanded(
              flex: 2,
              child: Container(
                child: Image.asset(
                  Res.robot_avatar,
                ),
              ),
            ),
          ],
        )
        /*: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextWidget(
                  text: 'Join Our Team',
                  textType: Responsive.isDesktop(context) ? TextType.MainTitle : TextType.SecondSubTitle,
                  isBold: true,
                  textAlign: TextAlign.justify,
                ),
                SizedBox(width: 30),
                CustomTextWidget(
                  text:
                      'Be Part of Infinity Family Lorem ipsum dolor sit amet, consectetur adipiscing elitsed do eiusmod tempor incididunt ut labore Lorem ipsum dolor sit amet, consectetur adipiscing ',
                  fontSize: 15,
                  fontColor: MyColors.grey_text,
                ),
                SizedBox(width: 30),
                Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: MyColors.green_accent,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextWidget(
                        text: 'Apply Now',
                        fontColor: MyColors.white,
                        fontSize: 20,
                      ),
                      SizedBox(width: 10),
                      SvgPicture.asset(
                        Res.right_arrow_white,
                        width: 15,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Image.asset(
                    Res.robot_avatar,
                    height: 200,
                  ),
                ),
              ],
            ),*/
        );
  }
}
