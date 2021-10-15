import 'package:flutter/material.dart';
import 'package:untitled2/Routes.dart';
import 'package:untitled2/Views/SplashScreen.dart';

import 'Views/ShoppingScreen.dart';
import 'myTheme.dart';

void main()=>runApp(MyApp()) ;



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: SplashScreen(),
      theme: myTheme(),
      routes: Routes,
      initialRoute: SplashScreen.routeName ,
    );
  }
}
