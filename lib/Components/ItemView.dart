import 'package:flutter/material.dart';
import 'package:untitled2/models/Product.dart';



class ItemView extends StatefulWidget {
  const ItemView({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ItemViewState createState() => _ItemViewState();
}

class _ItemViewState extends State<ItemView> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: GridTile(
          child: Image.network(widget.product.imageUrl,
            fit: BoxFit.fill ,
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            leading: widget.product.isfavorite ?
                  IconButton(
                      icon: Icon(Icons.thumb_up , color: Colors.orange,),
                          onPressed: (){
                                    setState(() {
                                      widget.product.isfavorite = true;
                                    });
                             },
                  )
                : Icon(Icons.thumb_down , color: Colors.orange,),
            title:Center(child: Text(widget.product.title , style: TextStyle(color: Colors.orange , fontSize: 16),)) ,
            trailing:   Icon(Icons.add_shopping_cart_sharp , color: Colors.orange,),

          ),
        )
    );
  }
}
