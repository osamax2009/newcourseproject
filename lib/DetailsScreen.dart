

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider/ProductProvider.dart';
import 'models/Product.dart';

class DetailsScreen extends StatelessWidget {


  DetailsScreen(this.myproduct);

  final Product myproduct ;


  @override
  Widget build(BuildContext context) {
     List<Product> relatedList = context.read<ProductProvider>().myproducts  ;

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
