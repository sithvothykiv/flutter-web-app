import 'package:infinity_web_app/common/base_view.dart';
import 'package:flutter/material.dart';
import 'package:infinity_web_app/widgets/custom_text_widget.dart';

class OurService extends BaseView {
  static const String routeName = '/lib/page/home/components/OurService';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomTextWidget(
            text: 'OUR SERVICE',
            fontSize: 20,
          ),
          Wrap(
            children: [
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.phone_android_sharp,
                        ),
                        CustomTextWidget(
                          text: 'Mobile App Development',
                        ),
                      ],
                    ),
                    CustomTextWidget(
                      text: '''Build the native mobile application 
                    and cross-platform with the use of
                    modern CI/CD tools and trending. ''',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
