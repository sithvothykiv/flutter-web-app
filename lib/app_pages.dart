import 'package:get/get.dart';
import 'package:infinity_web_app/page/about_us/about_us_detail_page.dart';
import 'package:infinity_web_app/page/blogs/blog_detail.dart';
import 'package:infinity_web_app/page/blogs/blog_page.dart';
import 'package:infinity_web_app/page/blogs/controller/blog_controller.dart';
import 'package:infinity_web_app/page/join_us/join_us.dart';
import 'package:infinity_web_app/page/main/page_main.dart';

class AppPages {
  static final List<GetPage> pageRoutes = [
    GetPage(
      name: PageMain.routeName,
      page: () => PageMain(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AboutUsDetailPage.routeName,
      page: () => AboutUsDetailPage(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: BlogPage.routeName,
      page: () => BlogPage(),
      transition: Transition.noTransition,
      binding: BindingsBuilder(() {
        Get.lazyPut<BlogPageController>(() => BlogPageController());
      }),
    ),
    GetPage(
      name: JoinUs.routeName,
      page: () => JoinUs(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: BlogDetail.routeName,
      page: () => BlogDetail(),
      transition: Transition.noTransition,
    ),
  ];
}
