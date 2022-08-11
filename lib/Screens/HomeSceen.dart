import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/Models/Product.dart';
import 'package:untitled2/Provider/ProductListProvider.dart';
import 'package:untitled2/Screens/DetailsScreen.dart';

import '../Components/ItemShow.dart';
import '../Models/Person.dart';


class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);





  @override
  Widget build(BuildContext context) {
    var myproductList = Provider.of<ProductListProvider>(context).productList;

    return Scaffold(
      appBar: AppBar(
        title: Text("my product screen"),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            childAspectRatio: 3/2
          ),
          itemCount: myproductList.length,
          itemBuilder: ( cx, i){
            return GestureDetector(
              onTap: (){
                  Navigator.push(context, 
                    MaterialPageRoute(
                      builder: (context)=>DetailsScreen(myProduct: myproductList[i])
                    )
                  );
              },
                child: ItemShow(myproduct: myproductList[i])
            );
          }

      )
    );
  }
}


