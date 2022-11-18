

import 'package:flutter/material.dart';

import 'models/Product.dart';

class DetailsScreen extends StatelessWidget {


  DetailsScreen(this.myproduct,this.relatedList);

  final Product myproduct ;
  final List<Product> relatedList ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(myproduct.title),
      ),
      body: Container(
        child: Column(
          children: [
           
            Container(
              margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 15
                  ),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Image(image: NetworkImage(myproduct.imageUrl))
            ),
            Text(myproduct.description),
            Text(myproduct.price.toString()),
           
            Flexible(
              child: ListView.builder(
                itemCount: relatedList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (cx,i)=>
                relatedList[i].id == myproduct.id ?
                    Container()
                :
                    Container(
                  child: Image.network(relatedList[i].imageUrl),
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
