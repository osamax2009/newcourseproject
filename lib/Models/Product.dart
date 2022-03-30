import 'package:flutter/foundation.dart';

class Product {

  String id  ;
  String title;
  double price;
  String ImageUrl;
  String description;
  bool isFav ;

  Product({


  required      this.id,
    required    this.title,
    required     this.price,
    required     this.ImageUrl,
    required    this.description,
    this.isFav = false
  });








}