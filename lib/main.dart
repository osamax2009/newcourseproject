import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/Provider/ProductListProvider.dart';
import 'package:untitled2/Screens/HomeSceen.dart';
import 'package:untitled2/Screens/SplshScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>ProductListProvider())
      ],
      child: MaterialApp(

          debugShowCheckedModeBanner: false,
          title: "my Test App",
          home: SplashScreen(),
          //HomeScreen()
        ),
    );
  }
}
