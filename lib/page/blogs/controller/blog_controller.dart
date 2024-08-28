import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:infinity_web_app/api/api_service.dart';
import 'package:infinity_web_app/page/blogs/model/blog_model.dart';
import 'package:http/http.dart' as http;

class BlogPageController extends GetxController {
  BlogModel? blogModel;
  var isDataLoading = false.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    getApi();
  }

  @override
  Future<void> onReady() async {
    super.onReady();
  }

  getApi() async {
    final articles = Uri.tryParse(ApiService.baseUrl + ApiService.ALL_ARTICLES)!;
    try {
      isDataLoading(true);
      http.Response response = await http.get(articles);
      if (response.statusCode == 200) {
        ///data successfully
        var result = jsonDecode(response.body);
        blogModel = BlogModel.fromJson(result);
        isDataLoading(false);
      } else {
        ///error
      }
    } catch (e) {
      log('Error while getting data is $e');
      print('Error while getting data is $e');
    } finally {
      isDataLoading(false);
    }
  }
}
