class Product {
  int id;
  String name;
  double price;
  String image;
  String category;
  String description;

  Product(this.id, this.name, this.price, this.image, this.category,
      this.description);

  Product.fromJson(Map<String, dynamic> jsonData) {
    this.id = jsonData['id'];
    this.name = jsonData['name'];
    this.image = jsonData['image'];
    this.price = jsonData['price'];
    this.category = jsonData['category'];
    this.description = jsonData['description'];
  }
}
