
import 'package:flutter/cupertino.dart';

class SizeConfig  {

 static  double? screenHeight  ;
 static  double? screenWidth  ;
 static  Orientation? orientation;

  init(context){

    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    orientation = MediaQuery.of(context).orientation;
  }

  getProportionHeight(double height) {
    return (height  / 812) * screenHeight! ;
  }

 getProportionWidth(double height) {
   return (height  / 375) * screenWidth! ;
 }




}