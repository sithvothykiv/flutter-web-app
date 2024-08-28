import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:infinity_web_app/res/my_colors.dart';
import 'package:infinity_web_app/responsive.dart';
import 'package:infinity_web_app/widgets/custom_text_widget.dart';
import 'package:infinity_web_app/widgets/hover_widget.dart';

import '../../../res/res.dart';

class ProjectWidget extends StatelessWidget {
  static const String routeName = '/lib/page/home/components/Project';
  List<RxBool> onHoverList = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
      child: Column(
        children: [
          Text(
            'PROJECT',
            style: TextStyle(
              fontSize: (Responsive.isDesktop(context) ? 70 : 50),
              color: MyColors.black,
              fontFamily: "SF Pro",
              height: 1,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 700,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(fontSize: 18),
                children: [
                  TextSpan(text: "As a premier New York - based website "),
                  TextSpan(
                    text: "design and development company",
                    style: TextStyle(color: MyColors.green_accent, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                      text:
                          ", Lounge Lizard has created and continues to nurture a multi-channel digital marketing agency with super creative proficiency in all things marketing-related. From industry-leading digital design and development to maximized social."),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          StaggeredGrid.count(
            crossAxisCount: 3,
            crossAxisSpacing: Responsive.isDesktop(context)
                ? 30
                : Responsive.isTablet(context)
                    ? 20
                    : 10,
            mainAxisSpacing: Get.width * 0.04,
            children: [
              StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 0.9,
                  child: LayoutBuilder(
                    builder: (context, constraint) {
                      return OnHover(
                        builder: (bool isHovered) {
                          debugPrint(constraint.maxHeight.toString());
                          return Stack(
                            children: [
                              Image.asset(
                                Res.shamu_image,
                              ),
                              if (isHovered)
                                LearnMore(
                                  buttonBorderColor: MyColors.color_828ec0,
                                  //buttonColor: Colors.transparent,
                                  fontColor: MyColors.white,
                                  margin: EdgeInsets.only(bottom: constraint.maxHeight * 0.2, left: constraint.maxWidth * 0.05),
                                  alignment: Alignment.bottomLeft,
                                ),
                            ],
                          );
                        },
                      );
                    },
                  )),
              StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1.3145,
                  child: LayoutBuilder(
                    builder: (context, constraint) {
                      return OnHover(
                        builder: (bool isHovered) {
                          return Stack(
                            children: [
                              Image.asset(
                                Res.umpay_image,
                              ),
                              if (isHovered)
                                LearnMore(
                                  buttonBorderColor: MyColors.black,
                                  //buttonColor: MyColors.yellow,
                                  fontColor: MyColors.black,
                                  margin: EdgeInsets.only(top: constraint.maxHeight * 0.25),
                                  alignment: Alignment.topCenter,
                                ),
                            ],
                          );
                        },
                      );
                    },
                  )),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.3145,
                child: LayoutBuilder(
                  builder: (context, constraint) {
                    return OnHover(
                      builder: (bool isHovered) {
                        return Stack(
                          children: [
                            Image.asset(
                              Res.orkun_image,
                            ),
                            if (isHovered)
                              LearnMore(
                                buttonBorderColor: MyColors.black,
                                //buttonColor: MyColors.orange,
                                fontColor: MyColors.black,
                                margin: EdgeInsets.only(top: constraint.maxHeight * 0.25),
                                alignment: Alignment.topCenter,
                              ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.3145,
                child: LayoutBuilder(
                  builder: (context, constraint) {
                    return OnHover(
                      builder: (bool isHovered) {
                        return Stack(
                          children: [
                            Image.asset(
                              Res.i_cow_image,
                            ),
                            if (isHovered)
                              LearnMore(
                                buttonBorderColor: MyColors.color_3cb0b0,
                                //buttonColor: Colors.transparent,
                                fontColor: MyColors.color_3cb0b0,
                                margin: EdgeInsets.only(top: constraint.maxHeight * 0.2),
                                alignment: Alignment.topCenter,
                              ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 0.9,
                child: LayoutBuilder(
                  builder: (context, constraint) {
                    return OnHover(
                      builder: (bool isHovered) {
                        return Stack(
                          children: [
                            Image.asset(
                              Res.flash_browser_image,
                            ),
                            if (isHovered)
                              LearnMore(
                                buttonBorderColor: MyColors.white,
                                //buttonColor: Colors.transparent,
                                fontColor: MyColors.white,
                                margin: EdgeInsets.only(top: constraint.maxHeight * .25),
                                alignment: Alignment.topCenter,
                              ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LearnMore extends StatelessWidget {
  Color? fontColor;
  Color? buttonColor;
  Color? buttonBorderColor;
  String? url;
  EdgeInsets? margin;
  Alignment? alignment;
  double? buttonWidth;
  double? buttonHeight;
  double? fontSize;

  LearnMore({
    this.fontColor,
    this.buttonColor,
    this.buttonBorderColor,
    this.url,
    this.margin,
    this.alignment,
    this.buttonWidth,
    this.buttonHeight,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      margin: margin,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: Responsive.isDesktop(context)
              ? EdgeInsets.symmetric(vertical: 10, horizontal: 25)
              : Responsive.isMobile(context)
                  ? EdgeInsets.symmetric(vertical: 3, horizontal: 25)
                  : EdgeInsets.symmetric(vertical: 6, horizontal: 25),
          decoration: BoxDecoration(
            border: Border.all(
              color: buttonBorderColor ?? MyColors.white,
              width: 1,
            ),
          ),
          child: CustomTextWidget(
            text: 'Learn More',
            fontColor: fontColor ?? MyColors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
