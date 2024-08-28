import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:infinity_web_app/constants.dart';
import 'package:infinity_web_app/page/home/models/our_service_model.dart';
import 'package:infinity_web_app/res/my_colors.dart';
import 'package:infinity_web_app/responsive.dart';
import 'package:infinity_web_app/src/app_color.dart';
import 'package:url_launcher/url_launcher.dart';

class OurServiceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 35),
      child: Column(
        children: [
          Text(
            "OUR SERVICE",
            style: TextStyle(
              fontSize: (Responsive.isDesktop(context) ? 70 : 50),
              color: MyColors.black,
              fontFamily: "SF Pro",
              height: 1,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 35),
          GridView.builder(
            itemCount: ourServiceItems.length,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: (Responsive.isDesktop(context))
                  ? 3
                  : (Responsive.isTablet(context))
                      ? 2
                      : 1,
              childAspectRatio: (Responsive.isDesktop(context))
                  ? Get.width / (Get.height * 0.9)
                  : (Responsive.isMobile(context))
                      ? Get.width / (Get.height * 0.3)
                      : Get.width / (Get.height * 0.7),
              crossAxisSpacing: (Responsive.isDesktop(context)) ? 25 : 15,
              mainAxisSpacing: (Responsive.isDesktop(context)) ? 23 : 18,
            ),
            itemBuilder: (BuildContext context, int index) {
              return ourServiceWidget(context, ourServiceItems[index]);
            },
          ),
        ],
      ),
    );
  }

  ourServiceWidget(BuildContext context, OurServiceModel blog) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10), //(!Responsive.isDesktop(context)) ? 5 : 0),
      decoration: BoxDecoration(
        color: AppColor.colorWhite,
        border: Border.all(
          color: AppColor.colorDarkBorder,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                blog.image!,
                width: (Responsive.isDesktop(context)) ? 80 : 50,
                height: (Responsive.isDesktop(context)) ? 80 : 50,
              ),
              SizedBox(width: 5),
              Expanded(
                child: Text(
                  blog.title!,
                  style: TextStyle(
                    fontSize: Responsive.isDesktop(context) ? 32 : 24,
                    fontFamily: "SF Pro",
                    color: kDarkBlackColor,
                    height: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: blog.description!, style: TextStyle(color: MyColors.grey_text, fontSize: 20)),
                  blog.title! == "Creative Solution"
                      ? TextSpan(
                          text: "Netracreative",
                          style: TextStyle(color: MyColors.green_accent),
                          recognizer: new TapGestureRecognizer()..onTap = () => _launchUrl(),
                        )
                      : TextSpan(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<void> _launchUrl() async {
    final Uri _url = Uri.parse("https://netracreative.com");
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
}
