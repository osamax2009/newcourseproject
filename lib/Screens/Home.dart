import 'package:flutter/material.dart';
import 'package:untitled2/Components/ItemView.dart';
import 'package:untitled2/models/Product.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);

   List<Product> myProduct = [
     Product(
       id: 'p1',
       title: 'Red Shirt',
       description: 'A red shirt - it is pretty red!',
       price: 29.99,
       imageUrl:
       'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
     ),
     Product(
       id: 'p2',
       title: 'Trousers',
       description: 'A nice pair of trousers.',
       price: 59.99,
       imageUrl:
       'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
     ),
     Product(
       id: 'p3',
       title: 'Yellow Scarf',
       description: 'Warm and cozy - exactly what you need for the winter.',
       price: 19.99,
       imageUrl:
       'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
     ),
     Product(
       id: 'p4',
       title: 'A Pan',
       description: 'Prepare any meal you want.',
       price: 49.99,
       imageUrl:
       'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
     ),
   ];




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: GridView.builder(
          padding: EdgeInsets.all(10),
          itemCount: myProduct.length, /// number of items
          itemBuilder: (cx, i ) =>
              ItemView(product: myProduct[i]),

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2 ,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 3/2
                  ),


            ),
        ///

      ),
    );
  }
}
