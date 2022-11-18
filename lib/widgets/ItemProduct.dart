import 'package:flutter/material.dart';
import 'package:untitled2/Constants.dart';

import '../models/Product.dart';


class ItemProduct extends StatelessWidget {

  ItemProduct(this.myproduct, this.press ,this.iscontains);

  final Product  myproduct ;
  final Function() press ;
  final bool  iscontains ;



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: iscontains ? Colors.orange: Colors.transparent,
              width: 1
          )
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: GridTile(
            child: Image.network(myproduct.imageUrl,fit: BoxFit.fill,),
            footer:
            GridTileBar(
              backgroundColor: Colors.black87,
              title: Text(myproduct.title,
                style: TextStyle(
                  color: primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
              leading:  IconButton(
                icon: Icon( Icons.add_shopping_cart,color: primaryColor),
                onPressed: press
              ),
              trailing:Icon(Icons.favorite,color: primaryColor),
            ) ,
          )
      ),
    );
  }
}


