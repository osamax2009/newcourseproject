import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Models/Product.dart';
import '../Provider/ProductListProvider.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key,required this.myProduct }) : super(key: key);
  final Product myProduct  ;
  @override

  Widget build(BuildContext context) {
    var myproductList = Provider.of<ProductListProvider>(context).productList;

    return Scaffold(
      appBar: AppBar(
        title: Text(myProduct.title),

      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 10
                ),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Image(
                image: NetworkImage(myProduct.imageUrl),
              ),
            ),
            Text(myProduct.description,
            style: TextStyle(
              fontSize: 20
             ),
            ),
            Text(
              "Price: ${myProduct.price.toString()}",
              style: TextStyle(
                  fontSize: 20,
                color: Colors.blue
              ),
            ),
            ElevatedButton(onPressed: (){}, child: Text("add to basket")),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...myproductList.map((item) =>

                      Image.network(item.imageUrl)
                    )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
