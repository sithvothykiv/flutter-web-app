import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinity_web_app/common/base_view.dart';
import 'package:infinity_web_app/constants.dart';
import 'package:infinity_web_app/page/main/controllers/menu_controller.dart' as m;
import 'package:infinity_web_app/page/main/page_main.dart';
import 'package:infinity_web_app/res/my_colors.dart';
import 'package:infinity_web_app/src/app_color.dart';
import 'package:infinity_web_app/widgets/hover_widget.dart';

class WebMenu extends BaseView {
  final m.MenuController _controller = Get.put(m.MenuController());
  var isColorHeader = true.obs;

  _onMenuIndexTapped(int index) {
    if (Get.currentRoute != PageMain.routeName) {
      Get.offAllNamed(PageMain.routeName);
    }
    isColorHeader.value = true;
    _controller.itemHomePageScrollController.scrollTo(index: index + 1, duration: Duration(seconds: 2), curve: Curves.ease);
  }

  @override
  void onInit() {
    super.onInit();
    _controller.itemHomePagePositionsListener.itemPositions.addListener(() {
      if (_controller.itemHomePagePositionsListener.itemPositions == 0) {
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
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
              _controller.menuItems.length,
              (index) => WebMenuItem(
                text: _controller.menuItems[index],
                isActive: index == _controller.selectedIndex,
                press: () => _onMenuIndexTapped(index), //_controller.setMenuIndex(index),
              ),
            ),
          ),
          SizedBox(width: 20),
          OnHoverButton(
            builder: (isHovered) {
              final color = isHovered ? AppColor.darkBlueColor : Colors.white;
              final hoveredColor = isHovered
                  ? Colors.white
                  : isColorHeader.value
                      ? AppColor.darkBlueColor
                      : Colors.transparent;

              return Container(
                decoration: BoxDecoration(
                  border: isHovered ? Border.all(color: Colors.white, style: BorderStyle.none) : Border.all(color: Colors.white, width: 2),
                ),
                child: ElevatedButton(
                  onPressed: () => _onMenuIndexTapped(5),
                  style: TextButton.styleFrom(
                    backgroundColor: hoveredColor,
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2, vertical: 15),
                  ),
                  child: Text(
                    "Contact Us",
                    style: TextStyle(fontSize: 17, color: color),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class WebMenuItem extends StatefulWidget {
  const WebMenuItem({
    Key? key,
    required this.isActive,
    required this.text,
    required this.press,
  }) : super(key: key);

  final bool isActive;
  final String text;
  final VoidCallback press;

  @override
  _WebMenuItemState createState() => _WebMenuItemState();
}

class _WebMenuItemState extends State<WebMenuItem> {
  bool _isHover = false;

  Color _borderColor() {
    if (widget.isActive) {
      return MyColors.black;
    } else if (!widget.isActive & _isHover) {
      return kPrimaryColor.withOpacity(0.4);
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.press,
      child: OnHoverWithoutAnimation(
        builder: (isHovered) {
          final color = isHovered ? AppColor.primaryDarkColor : Colors.white;
          final isFontWeight = isHovered ? FontWeight.w600 : FontWeight.w500;
          return Container(
            margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: Text(
              widget.text,
              style: TextStyle(color: color, fontSize: 17, fontWeight: isFontWeight),
            ),
          );
        },
      ),
    );
  }
}
