import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinity_web_app/common/base_view.dart';
import 'package:infinity_web_app/constants.dart';
import 'package:infinity_web_app/page/main/components/web_menu.dart';
import 'package:infinity_web_app/page/main/controllers/menu_controller.dart'as m;
import 'package:infinity_web_app/page/main/page_main.dart';
import 'package:infinity_web_app/res/res.dart';
import 'package:infinity_web_app/responsive.dart';
import 'package:infinity_web_app/src/app_color.dart';

class HeaderWidget extends BaseView {
  final m.MenuController _controller = Get.put(m.MenuController());
  var isColorHeader = true.obs;

  @override
  void onInit() {
    super.onInit();
    _controller.itemHomePagePositionsListener.itemPositions.addListener(() {
      if (_controller.itemHomePagePositionsListener.itemPositions.value == 0) {
        debugPrint(_controller.itemHomePagePositionsListener.itemPositions.value.toString());
        if (Get.currentRoute == PageMain.routeName) {
          isColorHeader.value = false;
        } else
          isColorHeader.value = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: isColorHeader.value ? AppColor.darkBlueColor : Colors.transparent,
      child: SafeArea(
        child: Container(
          constraints: BoxConstraints(maxWidth: kMaxWidth),
          padding: EdgeInsets.symmetric(horizontal: 70),
          child: Row(
            children: [
              if (!Responsive.isDesktop(context))
                IconButton(
                  icon: Icon(Icons.menu, color: Colors.white),
                  onPressed: () {
                    _controller.openOrCloseDrawer();
                  },
                ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(PageMain.routeName);
                },
                child: Image.asset(
                  Res.logo_icon,
                  height: 40,
                ),
              ),
              Spacer(),
              Spacer(),
              Spacer(),
              if (Responsive.isDesktop(context)) WebMenu(),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
