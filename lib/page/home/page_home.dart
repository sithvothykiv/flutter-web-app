import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinity_web_app/page/about_us/about_us_page.dart';
import 'package:infinity_web_app/page/blogs/blog_single_page.dart';
import 'package:infinity_web_app/page/home/components/join_our_team.dart';
import 'package:infinity_web_app/page/home/components/our_office_contact.dart';
import 'package:infinity_web_app/page/home/components/project.dart';
import 'package:infinity_web_app/page/main/controllers/menu_controller.dart' as m;
import 'package:infinity_web_app/page/main/page_header_video.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'components/our_service_widget.dart';

class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  final m.MenuController _controller = Get.put(m.MenuController());

  List<Widget> pages = [
    PageHeaderVideo(),
    OurServiceWidget(),
    AboutUsPage(),
    ProjectWidget(),
    BlogSinglePage(),
    JoinOurTeam(),
    OurOfficeContact(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildHomePage();
  }

  Widget _buildHomePage() {
    return ScrollablePositionedList.builder(
      itemCount: pages.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: pages[index],
        );
      },
      itemScrollController: _controller.itemHomePageScrollController,
      itemPositionsListener: _controller.itemHomePagePositionsListener,
      shrinkWrap: true,
    );
  }
}
