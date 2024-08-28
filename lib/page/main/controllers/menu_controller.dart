import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinity_web_app/page/about_us/about_us_detail_page.dart';
import 'package:infinity_web_app/page/home/page_contact_us.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MenuController extends GetxController {
  RxInt _selectedIndex = 0.obs;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  ItemScrollController itemHomePageScrollController = ItemScrollController();
  ItemPositionsListener itemHomePagePositionsListener = ItemPositionsListener.create();

  int get selectedIndex => _selectedIndex.value;
  List<String> get menuItems => ["Services", "About Us", "Project", "Blog", "Join Us"];
  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  void openOrCloseDrawer() {
    // _scaffoldKey.currentState!.openDrawer();
    /*if (_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openEndDrawer();
    } else {
      _scaffoldKey.currentState!.openDrawer();
    }*/
  }

  void setMenuIndex(int index) {
    _selectedIndex.value = index;
  }
}
