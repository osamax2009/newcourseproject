
import 'package:flutter/material.dart';
import 'package:untitled2/models/Product.dart';

class ProductList extends StatefulWidget {
   ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
    List<Product> myproducts = [
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

    var cartList = [] ;

    addtomycartlist(id){
      setState(() {
        cartList.add(id);
      });
      print(cartList);
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          padding: EdgeInsets.all(10),

          itemCount: myproducts.length,
          itemBuilder: (cx,i)=>Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: cartList.contains(myproducts[i].id)? Colors.orange: Colors.transparent,
                width: 1
              )
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
                child: GridTile(
                    child: Image.network(myproducts[i].imageUrl,fit: BoxFit.fill,),
                  footer:
                  GridTileBar(
                    backgroundColor: Colors.black87,
                    title: Text(myproducts[i].title,
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      textAlign: TextAlign.center,
                    ),
                    leading:  IconButton(
                      icon: Icon( Icons.add_shopping_cart,color: Colors.orange),
                      onPressed: (){
                        addtomycartlist(myproducts[i].id);
                      },
                    ),
                    trailing:Icon(Icons.favorite,color: Colors.orange),
                  ) ,
                )
            ),
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 2,
                childAspectRatio: 3/2
         ),

      )
    );
  }
}
