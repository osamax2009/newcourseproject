import 'package:flutter/material.dart';
import 'package:untitled2/Models%20/Person.dart';

class Home extends StatelessWidget {
 // const Home({Key? key}) : super(key: key);

 Person person1 = Person(id, name, updateTime, height, imageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("my Home Screen"),
      ),
    );
  }
}
