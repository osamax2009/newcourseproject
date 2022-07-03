import 'package:flutter/material.dart';
import 'package:untitled2/Screens/HomeSceen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "my Test App",
        home: HomeScreen());
  }
}
