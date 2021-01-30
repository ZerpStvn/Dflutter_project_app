import 'package:flutter/cupertino.dart';

class ArticleModel {
  String title;
  String description;
  String imageUrl;

  ArticleModel({this.title, this.description, this.imageUrl});
}

class BoxMOdel {
  String title;
  String price;
  Icon icon;
  BoxMOdel({this.title, this.price, this.icon});
}

class CarouselNewsModel {
  String title;
  String header;
  String descrip;
  String imgUrl;

  CarouselNewsModel({this.title, this.header, this.descrip, this.imgUrl});
}
