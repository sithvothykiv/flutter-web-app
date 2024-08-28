class Image {
  ImageData? imageData;

  Image({this.imageData});

  Image.fromJson(Map<String, dynamic> json) {
    imageData = json['data'] != null ? new ImageData.fromJson(json['data']) : null;
  }
}

class ImageData {
  int? id;
  ImageAttributes? imageAttributes;

  ImageData({this.id, this.imageAttributes});

  ImageData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imageAttributes = json['attributes'] != null ? new ImageAttributes.fromJson(json['attributes']) : null;
  }
}

class ImageAttributes {
  String? name;
  String? alternativeText;
  String? caption;
  int? width;
  int? height;
  String? hash;
  String? ext;
  String? mime;
  double? size;
  String? url;
  String? provider;
  String? createdAt;
  String? updatedAt;

  ImageAttributes({this.name, this.alternativeText, this.caption, this.width, this.height, this.hash, this.ext, this.mime, this.size, this.url, this.provider, this.createdAt, this.updatedAt});

  ImageAttributes.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    alternativeText = json['alternativeText'];
    caption = json['caption'];
    width = json['width'];
    height = json['height'];
    hash = json['hash'];
    ext = json['ext'];
    mime = json['mime'];
    size = json['size'];
    url = json['url'];
    provider = json['provider'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }
}
