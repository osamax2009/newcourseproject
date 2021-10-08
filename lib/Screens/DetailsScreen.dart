import 'package:flutter/material.dart';
import 'package:untitled2/Models/Product.dart';

class DetailsScreen extends StatelessWidget {
//  const DetailsScreen({Key? key}) : super(key: key);

final  Product? product ;

DetailsScreen(this.product);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product!.title!),
      ),
    );
  }
}
