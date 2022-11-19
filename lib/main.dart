import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/ProductList.dart';
import 'package:untitled2/Provider/ProductProvider.dart';
import 'package:untitled2/Provider/UserProvider.dart';

import 'HomeScreen.dart';
import 'Wrapper.dart';

void main()=>runApp(MyApp());




class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>UserProvider()),
        ChangeNotifierProvider(create: (context)=>ProductProvider()),
      ],

      child:
         MaterialApp(
          home: SafeArea(
              child:  Wrapper()
             // ProductList()
          ) ,
        )

    );
  }
}
