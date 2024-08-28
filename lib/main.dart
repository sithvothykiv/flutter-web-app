import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinity_web_app/app_pages.dart';
import 'package:infinity_web_app/page/main/page_main.dart';
import 'package:infinity_web_app/src/app_color.dart';

import 'constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Infinity Information',
      color: AppColor.colorWhite,
      getPages: AppPages.pageRoutes,
      initialRoute: PageMain.routeName,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBgColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(backgroundColor: kPrimaryColor),
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: kBodyTextColor),
          bodyMedium: TextStyle(color: kBodyTextColor),
          headlineLarge: TextStyle(color: kDarkBlackColor),
        ),
      ),
    );
  }
}
