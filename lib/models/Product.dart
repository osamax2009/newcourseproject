class Product
{
  String id , title , description, imageUrl  ;
  double price;
  bool isfavorite ;


  Product(
      {
   required this.id,
    required  this.title,
    required this.description,
    required  this.imageUrl,
    required   this.price,
    this.isfavorite= false
  });


}