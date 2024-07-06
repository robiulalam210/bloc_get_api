import 'dart:convert';

List<TestModelList> testModelListFromJson(String str) => List<TestModelList>.from(json.decode(str).map((x) => TestModelList.fromJson(x)));

String testModelListToJson(List<TestModelList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TestModelList {
  int? id;
  String? slug;
  String? url;
  String? title;
  String? content;
  String? image;
  String? thumbnail;
  String? status;
  String? category;
  String? publishedAt;
  String? updatedAt;
  int? userId;

  TestModelList({
    this.id,
    this.slug,
    this.url,
    this.title,
    this.content,
    this.image,
    this.thumbnail,
    this.status,
    this.category,
    this.publishedAt,
    this.updatedAt,
    this.userId,
  });

  factory TestModelList.fromJson(Map<String, dynamic> json) => TestModelList(
    id: json["id"],
    slug: json["slug"],
    url: json["url"],
    title: json["title"],
    content: json["content"],
    image: json["image"],
    thumbnail: json["thumbnail"],
    status: json["status"],
    category: json["category"],
    publishedAt: json["publishedAt"],
    updatedAt: json["updatedAt"],
    userId: json["userId"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "slug": slug,
    "url": url,
    "title": title,
    "content": content,
    "image": image,
    "thumbnail": thumbnail,
    "status": status,
    "category": category,
    "publishedAt": publishedAt,
    "updatedAt": updatedAt,
    "userId": userId,
  };
}
