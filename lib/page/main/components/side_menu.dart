import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinity_web_app/constants.dart';
import 'package:infinity_web_app/page/main/controllers/menu_controller.dart' as m;
import 'package:infinity_web_app/res/res.dart';
import 'package:infinity_web_app/src/app_color.dart';

class SideMenu extends StatelessWidget {
  final m.MenuController _controller = Get.put(m.MenuController());
  _onMenuIndexTapped(int index) {
    _controller.itemHomePageScrollController.scrollTo(
      index: index,
      duration: Duration(seconds: 2),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: AppColor.darkBlueColor,
        child: Obx(
          () => ListView(
            children: [
              DrawerHeader(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 3.5),
                  child: Image.asset(Res.logo_icon, height: 40),
                ),
              ),
              ...List.generate(
                _controller.menuItems.length,
                (index) => SizedBox(
                  child: DrawerItem(
                    isActive: index == _controller.selectedIndex,
                    title: _controller.menuItems[index],
                    press: () {
                      _onMenuIndexTapped(index);
                      _controller.setMenuIndex(index);
                      debugPrint('Hello');
                      Get.back();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback press;

  const DrawerItem({
    Key? key,
    required this.title,
    required this.isActive,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        selected: isActive,
        selectedTileColor: kPrimaryColor,
        onTap: press,
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
