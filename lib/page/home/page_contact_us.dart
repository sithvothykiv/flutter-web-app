import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinity_web_app/page/main/components/header_widget.dart';
import 'package:infinity_web_app/page/main/components/side_menu.dart';
import 'package:infinity_web_app/page/main/controllers/menu_controller.dart' as m;

class PageContactUs extends StatelessWidget {
  PageContactUs({Key? key}) : super(key: key);
  static const String routeName = "/lib/page/contact_us/PageContactUs";
  final m.MenuController _controller = Get.put(m.MenuController());
  var pageIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _controller.scaffoldKey,
      // drawer: SideMenu(),
      body: Column(
        children: [
          // HeaderWidget(),
        ],
      ),
    );
  }
}
