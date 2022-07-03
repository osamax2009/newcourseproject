import 'package:flutter/material.dart';

import '../Models/Person.dart';


class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

  Person myPerson = Person("84574398", "alic manson", 170, Colors.blue);




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("myapp bar"),
      ),
      body:Container(
        width: double.infinity,
        child: Column(
          children: [

          ],
        ),
      )
    );
  }
}
