import 'package:flutter/material.dart';
import 'package:infinity_web_app/common/base_view.dart';
import 'package:infinity_web_app/page/locator.dart';
import 'package:infinity_web_app/page/main/components/footer.dart';
import 'package:infinity_web_app/page/main/components/header_widget.dart';
import 'package:infinity_web_app/routing/route_names.dart';
import 'package:infinity_web_app/routing/router.dart';
import 'package:infinity_web_app/services/navigation_service.dart';

class LayoutTemplate extends BaseView {
  static const String routeName = '/lib/page/layout_template/layout_template';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          HeaderWidget(),
          Expanded(
            child: Navigator(
              key: locator<NavigationService>().navigatorKey,
              onGenerateRoute: generateRoute,
              initialRoute: HomeRoute,
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}
