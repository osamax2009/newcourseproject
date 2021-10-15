import 'package:flutter/material.dart';

ThemeData myTheme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.purple,
      appBarTheme: AppBarTheme(
          elevation: 5,
          iconTheme: IconThemeData(color:Colors.black ) ,
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 20 , color: Colors.black)
          ) ,
          backgroundColor: Colors.green
      )
  );
}

