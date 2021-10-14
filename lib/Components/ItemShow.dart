import 'package:flutter/material.dart';
import 'package:untitled2/Models/Product.dart';

class ItemShow extends StatelessWidget {
    final Product? singleProduct ;
    final Function()? press ;
    ItemShow({this.singleProduct  , this.press});



  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: press,
        child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child:
        GridTile(
          child: Image(
            image:NetworkImage(singleProduct!.imageUrl ?? "" ) ,
            fit: BoxFit.fill,
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black45,
            leading: Icon(Icons.favorite , color: Colors.orange,),
            trailing:Icon(Icons.shopping_cart , color: Colors.orange,),
            title: Text(singleProduct!.title ?? "",
              textAlign: TextAlign.center,
              style: TextStyle(color:Colors.orange ),
            ),
          ),
        ),
    ),
      );
  }
}
