import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:infinity_web_app/page/about_us/about_us_detail_page.dart';
import 'package:infinity_web_app/page/blogs/blog_page.dart';
import 'package:infinity_web_app/page/home/components/join_our_team.dart';
import 'package:infinity_web_app/page/home/page_home.dart';
import 'package:infinity_web_app/routing/route_names.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(PageHome());
    case AboutUsRoute:
      return _getPageRoute(AboutUsDetailPage());
    case BlogsRoute:
      return _getPageRoute(BlogPage());
    case JoinOurTeamRoute:
      return _getPageRoute(JoinOurTeam());
    default:
      return _getPageRoute(PageHome());
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(child: child);
}

class _FadeRoute extends PageRouteBuilder {
  late final Widget child;
  _FadeRoute({required this.child})
      : super(
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) =>
                child,
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) =>
                FadeTransition(
                  opacity: animation,
                  child: child,
                ));
}
