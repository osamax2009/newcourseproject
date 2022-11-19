
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/DetailsScreen.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Screen"),
        actions: [
          CircleAvatar(
            radius: 70,
            backgroundColor: primaryColor,
            child: Image.network(
              context.watch<UserProvider>().user.image!
            ),
          ),
        ]
      ),
      body: Column(
        children: [
          Flexible(
            child: GridView.builder(
                padding: EdgeInsets.all(10),

                itemCount: myproducts.length,
                itemBuilder: (cx,i)=>GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> DetailsScreen(myproducts[i] , myproducts))
                    );
                  },
                  child: ItemProduct(
                      myproducts[i],
                      (){

                            cartList.contains(myproducts[i].id)?
                            removeFromMycartlist(myproducts[i].id)
                            :
                            addtomycartlist(myproducts[i].id);
                      },
                      cartList.contains(myproducts[i].id)

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
