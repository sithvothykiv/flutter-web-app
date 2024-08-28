import 'package:get/get.dart';
import 'package:infinity_web_app/common/base_view.dart';
import 'package:flutter/material.dart';
import 'package:infinity_web_app/page/blogs/components/article_widget.dart';
import 'package:infinity_web_app/page/blogs/components/blog_widget.dart';
import 'package:infinity_web_app/page/main/components/header_widget.dart';
import 'package:infinity_web_app/res/my_colors.dart';
import 'package:infinity_web_app/res/res.dart';
import 'package:infinity_web_app/responsive.dart';
import 'package:infinity_web_app/src/app_color.dart';
import 'package:infinity_web_app/widgets/custom_text_widget.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class BlogDetail extends BaseView {
  static const String routeName = '/blog/details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: _buildBody(context),
    );
  }

  _buildBody(BuildContext context) {
    return Column(
      children: [
        HeaderWidget(),
        Expanded(
          child: ScrollablePositionedList.builder(
            itemCount: 1,
            itemBuilder: (ctx, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () => Navigator.of(context).pop(),
                                icon: Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  size: 25,
                                  color: Color(0xFF3CA4B5),
                                ),
                              ),
                              Text(
                                'Blog',
                                style: TextStyle(color: Color(0xFF3CA4B5)),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          CustomTextWidget(
                            text: 'Winning Content Strategy for 2022: Thought Leadership',
                            fontSize: 50,
                          ),
                          SizedBox(height: 30),
                          CustomTextWidget(
                            text: 'Published on: 1st, July, 2022',
                            fontSize: 12,
                          ),
                          SizedBox(height: 15),
                          Image.asset(
                            Res.shamu_image,
                          ),
                          SizedBox(height: 20),
                          CustomTextWidget(
                            text:
                                'As a premier New York-based website design and development company, Lounge Lizard has created and continues to nurture a multi-channel digital marketing agency with super creative proficiency in all things marketing-related. From industry-leading digital design and development to maximized social.',
                            //fontSize: 12,
                          ),
                          SizedBox(height: 30),
                          ArticleWidget(
                            title: 'Published on: 1st, July, 2022',
                            text:
                                'As a premier New York-based website design and development company, Lounge Lizard has created and continues to nurture a multi-channel digital marketing agency with super creative proficiency in all things marketing-related. From industry-leading digital design and development to maximized social. ',
                          ),
                          SizedBox(height: 30),
                          ArticleWidget(
                            title: 'Published on: 1st, July, 2022',
                            text:
                                'As a premier New York-based website design and development company, Lounge Lizard has created and continues to nurture a multi-channel digital marketing agency with super creative proficiency in all things marketing-related. From industry-leading digital design and development to maximized social. ',
                          ),
                          SizedBox(height: 30),
                          ArticleWidget(
                            title: 'Published on: 1st, July, 2022',
                            text:
                                'As a premier New York-based website design and development company, Lounge Lizard has created and continues to nurture a multi-channel digital marketing agency with super creative proficiency in all things marketing-related. From industry-leading digital design and development to maximized social. ',
                          ),
                          SizedBox(height: 30),
                          ArticleWidget(
                            title: 'Published on: 1st, July, 2022',
                            text:
                                'As a premier New York-based website design and development company, Lounge Lizard has created and continues to nurture a multi-channel digital marketing agency with super creative proficiency in all things marketing-related. From industry-leading digital design and development to maximized social. ',
                          ),
                          SizedBox(height: 30),
                          ArticleWidget(
                            title: 'Published on: 1st, July, 2022',
                            text:
                                'As a premier New York-based website design and development company, Lounge Lizard has created and continues to nurture a multi-channel digital marketing agency with super creative proficiency in all things marketing-related. From industry-leading digital design and development to maximized social. ',
                          ),
                          SizedBox(height: 30),
                          ArticleWidget(
                            title: 'Published on: 1st, July, 2022',
                            text:
                                'As a premier New York-based website design and development company, Lounge Lizard has created and continues to nurture a multi-channel digital marketing agency with super creative proficiency in all things marketing-related. From industry-leading digital design and development to maximized social. ',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 50),
                    if (Responsive.isDesktop(context))
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextWidget(
                              text: 'More Blogs',
                              fontSize: 30,
                            ),
                            SizedBox(height: 30),
                            SizedBox(
                              height: 300,
                              child: BlogWidget(
                                image: Res.shamu_image,
                                title: 'Winning Content Strategy for 2022: Thought Leadership',
                                text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elitsed do eiusmod tempor incididunt ut labore et …….',
                                date: '14-July-2022',
                              ),
                            ),
                            SizedBox(height: 50),
                            SizedBox(
                              height: 300,
                              child: BlogWidget(
                                image: Res.shamu_image,
                                title: 'Winning Content Strategy for 2022: Thought Leadership',
                                text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elitsed do eiusmod tempor incididunt ut labore et …….',
                                date: '14-July-2022',
                              ),
                            ),
                            SizedBox(height: 50),
                            SizedBox(
                              height: 300,
                              child: BlogWidget(
                                image: Res.shamu_image,
                                title: 'Winning Content Strategy for 2022: Thought Leadership',
                                text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elitsed do eiusmod tempor incididunt ut labore et …….',
                                date: '14-July-2022',
                              ),
                            ),
                          ],
                        ),
                      )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
