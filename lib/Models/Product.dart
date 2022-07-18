class Product  {
  String id ;
  String title;
  String description;
  double price;
  String imageUrl ;
  bool fav;

    Product({
    required  this.id,
    required  this.title,
   required   this.description,
     required this.price,
    required  this.imageUrl,
      this.fav = false
  });

}