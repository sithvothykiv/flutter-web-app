import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_static_maps_controller/google_static_maps_controller.dart';
import 'package:infinity_web_app/common/base_view.dart';
import 'package:flutter/material.dart';
import 'package:infinity_web_app/res/my_colors.dart';
import 'package:infinity_web_app/responsive.dart';
import 'package:infinity_web_app/widgets/custom_text_widget.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../res/res.dart';

class OurOfficeContact extends BaseView {
  String googleMapUrl = 'https://www.google.com/maps/place/Amass+Central+Tower/@11.554581,104.9227201,18.66z/data=!4m5!3m4!1s0x310951550b90a371:0xea3e1fb2eb413424!8m2!3d11.5543341!4d104.9234847';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50, left: 50, right: 50),
      decoration: BoxDecoration(
        border: Border.all(color: MyColors.gray),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: Responsive.isDesktop(context) ? 1 : 3,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 45, vertical: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Our Office',
                    style: TextStyle(
                      fontSize: (Responsive.isDesktop(context) ? 50 : 30),
                      color: MyColors.grey_text,
                      fontFamily: "SF Pro",
                      height: 1,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        width: 20,
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          Res.locator_icon,
                          height: 15,
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: CustomTextWidget(text: 'Phnom Penh, Samdach Louis Em St. (282, Amass Central Tower)', maxLine: 2),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        width: 20,
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          Res.portfolio_icon,
                          width: 15,
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: CustomTextWidget(
                          text: 'Working hours: 8:00AM - 6:00PM (Monday - Friday)',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        width: 20,
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          Res.email_icon,
                          width: 15,
                        ),
                      ),
                      SizedBox(width: 15),
                      CustomTextWidget(
                        text: 'infinity@gmail.com',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          if (!Responsive.isMobile(context))
            Expanded(
              flex: Responsive.isDesktop(context) ? 1 : 2,
              child: GestureDetector(
                onTap: () async {
                  debugPrint('Hello');
                  await launchUrlString(
                    googleMapUrl,
                    mode: LaunchMode.externalApplication,
                    webViewConfiguration: const WebViewConfiguration(),
                  );
                },
                child: AbsorbPointer(
                  child: StaticMap(
                    width: Get.width / 2,
                    height: Get.height / 3,
                    scaleToDevicePixelRatio: true,
                    googleApiKey: 'AIzaSyBQBfQgnclMbqFzIc395wTDdXAf2kDFv1w',
                    styles: retroMapStyle,
                    paths: [],
                    zoom: 16,
                    visible: [
                      GeocodedLocation.address('Amass Central Tower'),
                    ],
                    markers: [
                      Marker.custom(
                        locations: [
                          Location(11.5543341, 104.9234847),
                        ],
                        icon: Res.locator_icon,
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  final retroMapStyle = [
    const MapStyle(
      element: StyleElement.geometry,
      rules: [
        StyleRule.color(Color(0xffebe3cd)),
      ],
    ),
    MapStyle(
      element: StyleElement.labels.text,
      rules: const [
        StyleRule.color(Color(0xFF523735)),
      ],
    ),
    MapStyle(
      element: StyleElement.labels.text.stroke,
      rules: const [
        StyleRule.color(Color(0xFFf5f1e6)),
      ],
    ),
    MapStyle(
      element: StyleElement.geometry.stroke,
      feature: StyleFeature.administrative,
      rules: const [
        StyleRule.color(Color(0xFFc9b2a6)),
      ],
    ),
    MapStyle(
      element: StyleElement.geometry.stroke,
      feature: StyleFeature.administrative.landParcel,
      rules: const [
        StyleRule.color(Color(0xFFdcd2be)),
      ],
    ),
    MapStyle(
      element: StyleElement.labels.text.fill,
      feature: StyleFeature.administrative.landParcel,
      rules: const [
        StyleRule.color(Color(0xFFae9e90)),
      ],
    ),
    MapStyle(
      element: StyleElement.geometry,
      feature: StyleFeature.landscape.natural,
      rules: const [
        StyleRule.color(Color(0xFFdfd2ae)),
      ],
    ),
    const MapStyle(
      element: StyleElement.geometry,
      feature: StyleFeature.poi,
      rules: [
        StyleRule.color(Color(0xFFdfd2ae)),
      ],
    ),
    MapStyle(
      element: StyleElement.labels.text.fill,
      feature: StyleFeature.poi,
      rules: const [
        StyleRule.color(Color(0xFF93817c)),
      ],
    ),
    MapStyle(
      element: StyleElement.geometry.fill,
      feature: StyleFeature.poi.park,
      rules: const [
        StyleRule.color(Color(0xFFa5b076)),
      ],
    ),
    MapStyle(
      element: StyleElement.labels.text.fill,
      feature: StyleFeature.poi.park,
      rules: const [
        StyleRule.color(Color(0xFF447530)),
      ],
    ),
    const MapStyle(
      element: StyleElement.geometry,
      feature: StyleFeature.road,
      rules: [
        StyleRule.color(Color(0xFFf5f1e6)),
      ],
    ),
    MapStyle(
      element: StyleElement.geometry,
      feature: StyleFeature.road.arterial,
      rules: const [
        StyleRule.color(Color(0xFFfdfcf8)),
      ],
    ),
    MapStyle(
      element: StyleElement.geometry,
      feature: StyleFeature.road.highway,
      rules: const [
        StyleRule.color(Color(0xFFf8c967)),
      ],
    ),
    MapStyle(
      element: StyleElement.geometry.stroke,
      feature: StyleFeature.road.highway,
      rules: const [
        StyleRule.color(Color(0xFFe9bc62)),
      ],
    ),
    MapStyle(
      element: StyleElement.geometry,
      feature: StyleFeature.road.highway.controlledAccess,
      rules: const [
        StyleRule.color(Color(0xFFe98d58)),
      ],
    ),
    MapStyle(
      element: StyleElement.geometry.stroke,
      feature: StyleFeature.road.highway.controlledAccess,
      rules: const [
        StyleRule.color(Color(0xFFdb8555)),
      ],
    ),
    MapStyle(
      element: StyleElement.labels.text.fill,
      feature: StyleFeature.road.local,
      rules: const [
        StyleRule.color(Color(0xFF806b63)),
      ],
    ),
    MapStyle(
      element: StyleElement.geometry,
      feature: StyleFeature.transit.line,
      rules: const [
        StyleRule.color(Color(0xFFdfd2ae)),
      ],
    ),
    MapStyle(
      element: StyleElement.labels.text.fill,
      feature: StyleFeature.transit.line,
      rules: const [
        StyleRule.color(Color(0xFF8f7d77)),
      ],
    ),
    MapStyle(
      element: StyleElement.labels.text.stroke,
      feature: StyleFeature.transit.line,
      rules: const [
        StyleRule.color(Color(0xFFebe3cd)),
      ],
    ),
    MapStyle(
      element: StyleElement.geometry,
      feature: StyleFeature.transit.station,
      rules: const [
        StyleRule.color(Color(0xFFdfd2ae)),
      ],
    ),
    MapStyle(
      element: StyleElement.geometry.fill,
      feature: StyleFeature.water,
      rules: const [
        StyleRule.color(Color(0xFFb9d3c2)),
      ],
    ),
    MapStyle(
      element: StyleElement.labels.text.fill,
      feature: StyleFeature.water,
      rules: const [
        StyleRule.color(Color(0xFF92998d)),
      ],
    ),
  ];
}
