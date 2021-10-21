import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/Components/ItemShow.dart';
import 'package:untitled2/Models/Product.dart';
import 'package:untitled2/Provider/Products.dart';
import 'package:untitled2/Views/DetailsScreen.dart';


class ShoppingScreen extends StatelessWidget {
 // const ShoppingScreen({Key? key}) : super(key: key);
    static String  routeName = "Shopping" ;


  @override
  Widget build(BuildContext context) {
    var myProducts = Provider.of<Products>(context).myProducts ;



    return Scaffold(
    appBar: AppBar(
      title: Text(" my Shopping List "),

    ),
      body: GridView.builder(
          padding: EdgeInsets.all(10),
        itemCount: myProducts.length,

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10, // virtically
            crossAxisSpacing: 10, // horizantally
            crossAxisCount: 2 ,
            childAspectRatio: 3/2

          ),
          itemBuilder:(cx , i )=> ItemShow(
            singleProduct: myProducts[i],
             press:(){
            Navigator.push(
              context,
                MaterialPageRoute(builder: (context)=>DetailsScreen(myProducts[i])
                  ),

                );
             } ,
          ),
      ),
    );
  }
}
