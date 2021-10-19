class Category_model{//model
  late int id;
  late String Avatar;
  late String Name;

  Category_model.fromJson(Map<String,dynamic>categoryMap){//3shan a2olo nta ht5od product hab3tlo mno map
    this.id=categoryMap['id'];
    this.Name=categoryMap['name'];
    this.Avatar=categoryMap['avatar'];

  }
}