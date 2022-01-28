import 'package:flutter/material.dart';
import 'package:untitled2/models/Product.dart';



class ItemView extends StatelessWidget {
  const ItemView({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: GridTile(
          child: Image.network(product.imageUrl,
            fit: BoxFit.fill ,
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            leading: Icon(Icons.thumb_up , color: Colors.orange,),
            title:Center(child: Text(product.title , style: TextStyle(color: Colors.orange , fontSize: 16),)) ,
            trailing: Icon(Icons.add_shopping_cart_sharp , color: Colors.orange,),

          ),
        )
    );
  }
}
