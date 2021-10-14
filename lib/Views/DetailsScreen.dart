import 'package:flutter/material.dart';
import 'package:untitled2/Models/Product.dart';


class DetailsScreen extends StatelessWidget {

  final Product singleProduct ;

  DetailsScreen(this.singleProduct);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(singleProduct.title ??""),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(

              border: Border.all(
                width: 10,
                color: Colors.orange

              ),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Image(image: NetworkImage(
                singleProduct.imageUrl ?? ""
            ),
            ),
          )
        ],
      ),

    );
  }
}
