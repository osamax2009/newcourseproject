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
        child: Image.network(product.imageUrl,
          fit: BoxFit.fill ,)
    );
  }
}
