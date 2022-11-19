
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/DetailsScreen.dart';
import 'package:untitled2/Provider/ProductProvider.dart';
import 'package:untitled2/Provider/UserProvider.dart';
import 'package:untitled2/models/Product.dart';
import 'package:untitled2/widgets/ItemProduct.dart';

import 'Constants.dart';

class ProductList extends StatefulWidget {
   ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {

    var cartList = [] ;

    addtomycartlist(id){
      setState(() {
        cartList.add(id);
      });
      print(cartList);
    }
    removeFromMycartlist(id){
      setState(() {
        cartList.remove(id);
      });
      print(cartList);
    }



    Product newProduct = Product(
      id: 'p1',
      title: 'Red shoos',
      description: 'A Red shoos- it is pretty red!',
      price: 24.99,
      imageUrl:
      'https://5.imimg.com/data5/AY/UD/ZK/ANDROID-96526326/adidas-falcon-1-jpg-500x500.jpg',
    );

  @override
  Widget build(BuildContext context) {
      var thegetlistproduct = context.watch<ProductProvider>().myproducts ;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.add),
          onPressed: (){
            context.read<ProductProvider>().incressToList(newProduct);
          },
        ),
        title: Text("Product Screen"),
        actions: [
          CircleAvatar(

            radius: 50,
            backgroundColor: primaryColor,
            backgroundImage: NetworkImage( context.watch<UserProvider>().user.image!,
             )
          ),
        ]
      ),
      body: Column(
        children: [
          Flexible(
            child: GridView.builder(
                padding: EdgeInsets.all(10),

                itemCount: thegetlistproduct.length,
                itemBuilder: (cx,i)=>GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> DetailsScreen(thegetlistproduct[i]))
                    );
                  },
                  child: ItemProduct(
                      thegetlistproduct[i],
                      (){

                            cartList.contains(thegetlistproduct[i].id)?
                            removeFromMycartlist(thegetlistproduct[i].id)
                            :
                            addtomycartlist(thegetlistproduct[i].id);
                      },
                      cartList.contains(thegetlistproduct[i].id)

                  ),
                ),




                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      crossAxisCount: 2,
                      childAspectRatio: 3/2
               ),

            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
              width: double.infinity,
              height: 60,
              child: ElevatedButton(onPressed: (){}, child: Text("submit"))
          )
        ],
      )
    );
  }
}
