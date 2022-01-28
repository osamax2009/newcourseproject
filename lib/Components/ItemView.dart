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
            title:Text(product.title , style: TextStyle(color: Colors.orange , fontSize: 16),) ,
          ),
        )
    );
  }
}
