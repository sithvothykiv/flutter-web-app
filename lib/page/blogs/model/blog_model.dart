import 'package:infinity_web_app/page/blogs/model/image_model.dart';

class BlogModel {
  List<BlogData>? data;

  BlogModel({this.data});

  BlogModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <BlogData>[];
      json['data'].forEach((v) {
        data!.add(new BlogData.fromJson(v));
      });
    }
  }
}

class BlogData {
  int? id;
  BlogAttributes? attributes;

  BlogData({this.id, this.attributes});

  BlogData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    attributes = json['attributes'] != null ? new BlogAttributes.fromJson(json['attributes']) : null;
  }
}

class BlogAttributes {
  String? title;
  String? description;
  String? slug;
  String? createdAt;
  String? updatedAt;
  String? publishedAt;
  String? content;
  Image? image;

  BlogAttributes({this.title, this.description, this.slug, this.createdAt, this.updatedAt, this.publishedAt, this.content, this.image});

  BlogAttributes.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    slug = json['slug'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    publishedAt = json['publishedAt'];
    content = json['content'];
    image = json['image'] != null ? new Image.fromJson(json['image']) : null;
  }
}
