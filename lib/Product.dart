class Product{//model
  late int id;
  late String image;
  late String Name;
  late String title;
  late var price;
  Product.fromJson(Map<String,dynamic>productMap){//3shan a2olo nta ht5od product hab3tlo mno map
    this.id=productMap['id'];
    this.Name=productMap['name'];
    this.title=productMap['title'];
    this.price=productMap['price'];
    this.image =productMap['avatar'];
  }
}