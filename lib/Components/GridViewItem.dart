import 'package:flutter/material.dart';
import 'package:untitled2/Models/Product.dart';


class GridViewItem extends StatelessWidget {
 // const GridViewItem({Key? key}) : super(key: key);

  Product? product ;
  GridViewItem(this.product);



  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: GridTile(
        child: Image(
          image: NetworkImage(product!.imageUrl! ),
          fit: BoxFit.fill,
        ),

        footer: GridTileBar(
          backgroundColor: Colors.black45,
          title: Text(product!.title!,
          ),
          leading: Icon(Icons.favorite , color: Colors.orange,),
          trailing: Icon(Icons.shopping_cart , color: Colors.orange,),

        ),
      ),
    );
  }
}
