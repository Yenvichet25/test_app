// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  dynamic color;
  String desc;

  Product({
    this.color,
    this.desc,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    color: json["color"],
    desc: json["desc"],
  );

  Map<String, dynamic> toJson() => {
    "color": color,
    "desc": desc,
  };
}
