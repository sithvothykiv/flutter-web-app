import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:infinity_web_app/api/api_service.dart';
import 'package:infinity_web_app/common/utils.dart';
import 'package:infinity_web_app/page/blogs/blog_detail.dart';
import 'package:infinity_web_app/page/blogs/components/blog_widget.dart';
import 'package:infinity_web_app/page/blogs/controller/blog_controller.dart';
import 'package:infinity_web_app/page/blogs/model/blog_model.dart';
import 'package:infinity_web_app/page/main/components/footer.dart';
import 'package:infinity_web_app/page/main/components/header_widget.dart';
import 'package:infinity_web_app/res/my_colors.dart';
import 'package:infinity_web_app/res/res.dart';
import 'package:infinity_web_app/responsive.dart';
import 'package:infinity_web_app/widgets/custom_text_widget.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class BlogPage extends StatefulWidget {
  static const String routeName = '/blog';

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  BlogPageController controller = Get.put(BlogPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Column(
        children: [
          HeaderWidget(),
          _buildBlogList(),
        ],
      ),
    );
  }

  _buildBlogList() {
    return Expanded(
      child: ScrollablePositionedList.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(height: 50),
              CustomTextWidget(
                text: 'BLOGS',
                textType: TextType.MainTitle,
                fontColor: MyColors.black,
                isBold: true,
              ),
              SizedBox(height: 20),
              SizedBox(
                width: Get.height * 0.8,
                child: RichText(
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  text: TextSpan(
                    style: TextStyle(fontSize: 18, height: 1.3),
                    children: [
                      TextSpan(text: "As a premier New York-based website"),
                      TextSpan(
                        text: " design and development company, \n",
                        style: TextStyle(color: MyColors.green_accent, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                          text:
                              "Lounge Lizard has created and continues to nurture a multi-channel digital marketing agency with super creative proficiency in all things marketing-related. From industry-leading digital design and development to maximized social."),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Obx(() {
                final blogData = controller.blogModel;
                return controller.isDataLoading.value && controller.blogModel == null
                    ? const SizedBox()
                    : Container(
                        height: (blogData?.data?.length ?? 0) * 180,
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: blogData?.data?.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: (Responsive.isDesktop(context))
                                ? 3
                                : (Responsive.isTablet(context))
                                    ? 2
                                    : 1,
                            childAspectRatio: (Responsive.isDesktop(context))
                                ? (Get.width * 0.5) / (Get.height * 0.8)
                                : (Responsive.isMobile(context))
                                    ? Get.width / (Get.height * 0.38)
                                    : Get.width / (Get.height * 0.7),
                            crossAxisSpacing: (Responsive.isDesktop(context)) ? 25 : 15,
                            mainAxisSpacing: (Responsive.isDesktop(context)) ? 23 : 18,
                          ),
                          itemBuilder: (context, index) {
                            return _BlogWidget(
                              () => Get.toNamed(BlogDetail.routeName),
                              blogData?.data?[index].attributes,
                              blogData?.data?[index].attributes!.image!.imageData!.imageAttributes!.url,
                            );
                          },
                        ),
                      );
              }),
              Footer(),
            ],
          );
        },
        shrinkWrap: true,
      ),
    );
  }

  _BlogWidget(Future? Function() onTap, BlogAttributes? attributes, String? image) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: MyColors.color_dbdbdb, width: 1),
        ),
        child: Column(
          children: [
            Expanded(
              child: _imageNetwork(image),
            ),
            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              alignment: Alignment.centerLeft,
              child: Text(
                attributes!.title ?? "",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: MyColors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  fontFamily: "SF Pro",
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "${attributes.content}",
                style: TextStyle(
                  color: MyColors.grey_text,
                  height: 1.5,
                ),
                textAlign: TextAlign.start,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              alignment: Alignment.centerLeft,
              child: Text(
                Utils.parseDataFormat(attributes.createdAt),
                style: TextStyle(
                  color: MyColors.grey_text.withOpacity(0.5),
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _imageNetwork(String? image) {
    return Image.network(ApiService.baseUrlImage + "$image", fit: BoxFit.contain);
  }
}
