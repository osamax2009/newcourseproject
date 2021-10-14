import 'package:flutter/material.dart';
import 'package:untitled2/Components/ItemShow.dart';
import 'package:untitled2/Models/Product.dart';


class DetailsScreen extends StatelessWidget {


  var myProducts = [

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
           alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
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
              fit: BoxFit.contain,
            ),
          ),
          Text(singleProduct.description ?? "",
            style: TextStyle(
              fontSize: 20 ,
              color: Colors.blue
            ),
          ),

          SizedBox(
            height: 10,
          ),
          Text(
          " product price is  ${singleProduct.price.toString()}",

            style: TextStyle(
                fontSize: 20 ,
                color: Colors.blue
            ),

          ),
          Container(
            margin: EdgeInsets.all(13),
            width: double.infinity,
            height:MediaQuery.of(context).size.height * 0.06 ,
            child: ElevatedButton(

                onPressed: (){},
                child:Text(
                  "Submit",

                  style: TextStyle(
                      fontSize: 20 ,
                      color: Colors.white
                  ),
                ),
            ),
          ),

          Flexible(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:myProducts.length ,
                itemBuilder: (cx,i)=> ItemShow(singleProduct:myProducts[i] ,press: (){},)
            ),
          )


        ],
      ),

    );
  }
}
