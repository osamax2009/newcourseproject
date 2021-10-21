import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/Components/ItemShow.dart';
import 'package:untitled2/Models/Product.dart';
import 'package:untitled2/Provider/Products.dart';


class DetailsScreen extends StatelessWidget {



  final Product singleProduct ;

  DetailsScreen(this.singleProduct);
  @override
  Widget build(BuildContext context) {

    var myProducts = Provider.of<Products>(context).myProducts ;

    return Scaffold(
      appBar: AppBar(
        title: Text(singleProduct.title ??""),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
             //alignment: Alignment.center,
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
                fit: BoxFit.fill,
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

            Expanded(

              child: ListView.builder(

                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount:myProducts.length ,
                  itemBuilder: (cx,i)=>
                  singleProduct.id== myProducts[i].id ? Container() :
                  Padding(
                    padding: EdgeInsets.all(10),
                    child:

                    AspectRatio(
                      aspectRatio: 1/2,
                      child: ItemShow(singleProduct:myProducts[i] ,press: (){}
              ),
                    ),
                  ),

              ),
            )


          ],
        ),
      ),

    );
  }
}
