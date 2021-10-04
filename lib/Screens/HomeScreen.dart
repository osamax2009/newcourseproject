import 'package:flutter/material.dart';
import 'package:untitled2/Models%20/Person.dart';

class Home extends StatelessWidget {
 // const Home({Key? key}) : super(key: key);

  var myList = [
    Person("45543543", "ali", DateTime.now(), 188.0 , "https://i.pinimg.com/236x/1f/25/5d/1f255d7f9cf3afe7cd9cd97626d08fbf.jpg"),
    Person("543543f", "noor", DateTime.now(), 139.0 , "https://i.pinimg.com/236x/1f/25/5d/1f255d7f9cf3afe7cd9cd97626d08fbf.jpg"),
    Person("54354d3f", "mohmmed", DateTime.now(), 170.0 , "https://i.pinimg.com/236x/1f/25/5d/1f255d7f9cf3afe7cd9cd97626d08fbf.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("my Home Screen"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
        children: [
          Text(
            "osama",
            style: new TextStyle(fontSize:36.0,
                color: const Color(0xFFe10f0f),
                fontWeight: FontWeight.w200,
                fontFamily: "Roboto"),
          ),
        ],
        ),
      ),
    );
  }
}
