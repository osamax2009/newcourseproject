import 'package:flutter/material.dart';
import 'package:untitled2/Models/Product.dart';


class DetailsScreen extends StatelessWidget {

  final Product singleProduct ;

  DetailsScreen(this.singleProduct);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(singleProduct!.imageUrl!),
      ),

    );
  }
}
