
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

  var myList = [
    {
      "name": "max",
      "age": "18",
      "image":"http://s3.amazonaws.com/37assets/svn/765-default-avatar.png",
      "height":"155"
    },
    {
      "name": "mustafa",
      "age": "20",
      "image":"http://s3.amazonaws.com/37assets/svn/765-default-avatar.png",
      "height":"170"
    },
    {
      "name": "ali",
      "age": "21",
      "image":"http://s3.amazonaws.com/37assets/svn/765-default-avatar.png",
      "height":"180"
    },


  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("my First App"),


      ),

      body:Container(
        child: Column(
          children: [
            ...myList.map((item) =>

                Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(5),
                  height: 100,
                  width: double.infinity,

                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  alignment:Alignment.center ,
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(45),
                          child: Image.network(item["image"]!,
                            fit: BoxFit.fill,),
                        ),
                        radius: 100,
                        backgroundColor: Colors.white,
                      ),

                      Column(
                        children: [
                          Text(
                            "name:  ${item["name"]!}",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "height:  ${item["height"]!}",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "age:  ${myList[0]["age"]!}",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),


                )

            ).toList()


          ],
        ),
      ) ,


      floatingActionButton:FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.favorite),
      ) ,

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.orange,
        child: Container(
          height: 30,
        ),
      ) ,
    );
  }
}


