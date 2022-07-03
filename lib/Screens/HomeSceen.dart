import 'package:flutter/material.dart';

import '../Models/Person.dart';


class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);


  var myList =[
   Person("84574398", "alic manson", 170, Colors.blue),
   Person("75493875", "ali mohmed", 170, Colors.yellow),
   Person("84574398", "noor  mahdy", 170, Colors.orange)

  ];



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


              ...myList.map(
                      (myPerson) => Card(
                        color: myPerson.pClass,
                        margin: EdgeInsets.all(15),
                        elevation: 2,
                        child: Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.all(15),
                            height: 40,
                            width: double.infinity,
                            child: Column(
                              children: [
                                Text(myPerson.name),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(myPerson.id),
                                    Text(myPerson.height.toString()),
                                  ],
                                )
                              ],
                            )

                        ),
                      )
              ).toList()



          ],
        ),
      )
    );
  }
}

