import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinity_web_app/page/about_us/about_us_page.dart';
import 'package:infinity_web_app/page/blogs/blog_single_page.dart';
import 'package:infinity_web_app/page/home/components/join_our_team.dart';
import 'package:infinity_web_app/page/home/components/our_office_contact.dart';
import 'package:infinity_web_app/page/home/components/our_service_widget.dart';
import 'package:infinity_web_app/page/main/components/footer.dart';
import 'package:infinity_web_app/page/main/controllers/menu_controller.dart' as m;
import 'package:infinity_web_app/page/main/page_header_video.dart';
import 'package:infinity_web_app/responsive.dart';
import 'package:infinity_web_app/src/app_color.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../home/components/project.dart';
import 'components/header_widget.dart';
import 'components/side_menu.dart';

class PageMain extends StatefulWidget {
  static const String routeName = '/homepage';

  @override
  State<PageMain> createState() => PageMainState();
}

class PageMainState extends State<PageMain> {
  final m.MenuController _controller = Get.put(m.MenuController());
  List<Widget> pages = [];
  var widgetShow = 0.obs;

  @override
  void initState() {
    pages = [
      PageHeaderVideo(),
      OurServiceWidget(),
      AboutUsPage(),
      ProjectWidget(),
      BlogSinglePage(),
      JoinOurTeam(),
      OurOfficeContact(),
      Footer(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldKey,
      drawer: (!Responsive.isDesktop(context)) ? SideMenu() : SizedBox(),
      backgroundColor: AppColor.colorWhite,
      body: Stack(
        children: [_buildMainPage(), HeaderWidget()],
      ),
    );
  }

  Widget _buildMainPage() {
    return ScrollablePositionedList.builder(
      itemCount: pages.length,
      itemBuilder: (context, index) {
        return pages[index];
      },
      itemScrollController: _controller.itemHomePageScrollController,
      itemPositionsListener: _controller.itemHomePagePositionsListener,
      shrinkWrap: true,
    );
  }
}
