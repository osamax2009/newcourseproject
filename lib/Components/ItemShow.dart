
import 'package:flutter/material.dart';

import '../Models/Product.dart';

class ItemShow extends StatelessWidget {
  const ItemShow({
    Key? key,
    required this.myproduct,
  }) : super(key: key);

  final Product myproduct;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child:
      GridTile(

        child: Image(
          image: NetworkImage(myproduct.imageUrl),
          fit: BoxFit.fill,
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          title: Center(
            child: Text(myproduct.title,
              style: TextStyle(color: Colors.orange,fontSize: 14),
            ),
          ),
          leading: Icon(
            Icons.add_shopping_cart ,
            color: Colors.orange,
          ),
          trailing:Icon(
            Icons.favorite ,
            color: Colors.orange,
          ) ,
        ),
      ),
    );
  }
}