// To parse this JSON data, do
//
//     final category = categoryFromJson(jsonString);

import 'dart:convert';

Category categoryFromJson(String str) => Category.fromJson(json.decode(str));

String categoryToJson(Category data) => json.encode(data.toJson());

class Category {
  String brandname;
  String image;
  String price;

  Category({
    this.brandname,
    this.image,
    this.price,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    brandname: json["brandname"],
    image: json["image"],
    price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "brandname": brandname,
    "image": image,
    "price": price,
  };
}