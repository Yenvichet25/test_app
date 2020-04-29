import 'dart:ui';
import 'package:shoes_app/model/category.dart';

class TopShoesImages {
  final dynamic colorname;

  TopShoesImages({this.colorname});
}

List<TopShoesImages> colors = [
  TopShoesImages(
    colorname: [Color(0xffF07A80), Color(0xffDE4149)],
  ),
  TopShoesImages(
    colorname: [Color(0xff2C9293), Color(0xffe4e4d9)],
  ),
  TopShoesImages(
    colorname: [Color(0xff49a09d), Color(0xff5f2c82)],
  ),
  TopShoesImages(
    colorname: [Color(0xff4389A2), Color(0xff4776E6)],
  )
];

List<String> numbershoes=[
  "01",
  "02",
  "03",
  "04"
];

List<Category> itemNike = [
  Category(
    image: "asset/images/shoes13.jpg",
    brandname: "Nike Air Vapor",
    price: "\$139",
  ),
  Category(
    image: "asset/images/shoes12.png",
    brandname: "LeBron xVI Low",
    price: "\$159",
  ),
  Category(
    image:  "asset/images/shoes10.png",
    brandname:  "Nike Air Drunk",
    price: "\$189",
  ),
  Category(
    image: "asset/images/shoes9.png",
    brandname: "Nike React Miler",
    price: "\$229"
  )
];

