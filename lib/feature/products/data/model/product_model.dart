class ProductModel {
  int? id;
  int? categoryId;
  String? name;
  String? description;
  double? price; // Updated to int
  int? quantity;
  dynamic createdAt;
  dynamic updatedAt;

  ProductModel({
    this.id,
    this.categoryId,
    this.name,
    this.description,
    this.price,
    this.quantity,
    this.createdAt,
    this.updatedAt,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json['id'] as int?,
        categoryId: json['category_id'] as int?,
        name: json['name'] as String?,
        description: json['description'] as String?,
        price: (json['price'] as num?)?.toDouble(), // Convert to int
        quantity: json['quantity'] as int?,
        createdAt: json['created_at'],
        updatedAt: json['updated_at'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'category_id': categoryId,
        'name': name,
        'description': description,
        'price': price, // Already int
        'quantity': quantity,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}

final List<ProductModel> products = [
  ProductModel(
      name: 'Product 1',
      categoryId: 3,
      description:
          'With tender, delicate and loosely packed green leaves, Lettuce gives a crunchy and fresh feel to burgers and sandwiches. Nulla nibh diam, blandit vel consequat nec, ultrices et ipsum. Nulla varius magna a consequat pulvinar.',
      price: 100.0,
      quantity: 10),
  ProductModel(
      name: 'Product 2',
      categoryId: 2,
      description: 'Another product',
      price: 150.0,
      quantity: 5),
  ProductModel(
      name: 'Product 3',
      categoryId: 5,
      description: 'Yet another one',
      price: 200.0,
      quantity: 20),
];
