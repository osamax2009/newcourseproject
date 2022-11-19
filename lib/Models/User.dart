class User {
  User({
      this.id, 
      this.name, 
      this.email, 
      this.image,});


  int? id;
  String? name;
  String? email;
  String? image;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['email'] = email;
    map['image'] = image;
    return map;
  }

  User.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    image = json['image'];
  }

}