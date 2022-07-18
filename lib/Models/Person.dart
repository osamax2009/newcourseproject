
import 'package:flutter/material.dart';

class Person {
  String id;
  String name;
  double height;
  Color?  pClass;

  Person({
    required this.id,
    required  this.name,
    required  this.height,
    this.pClass});
}