class CartItemModel {
  int? id;
  int? cartId;
  int? productId;
  int? quantity;
  String? price;
  String? total;
  DateTime? createdAt;
  DateTime? updatedAt;

  CartItemModel({
    this.id,
    this.cartId,
    this.productId,
    this.quantity,
    this.price,
    this.total,
    this.createdAt,
    this.updatedAt,
  });

  factory CartItemModel.fromJson(Map<String, dynamic> json) => CartItemModel(
        id: json['id'] as int?,
        cartId: json['cart_id'] as int?,
        productId: json['product_id'] as int?,
        quantity: json['quantity'] as int?,
        price: json['price'] as String?,
        total: json['total'] as String?,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.parse(json['updated_at'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'cart_id': cartId,
        'product_id': productId,
        'quantity': quantity,
        'price': price,
        'total': total,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
      };
}


List<CartItemModel> cartItems = [
  CartItemModel(
    id: 1,
    cartId: 101,
    productId: 201,
    quantity: 2,
    price: "20.00",
    total: "40.00",
    createdAt: DateTime.parse("2024-12-01T10:00:00Z"),
    updatedAt: DateTime.parse("2024-12-01T12:00:00Z"),
  ),
  CartItemModel(
    id: 2,
    cartId: 101,
    productId: 202,
    quantity: 1,
    price: "15.00",
    total: "15.00",
    createdAt: DateTime.parse("2024-12-02T09:00:00Z"),
    updatedAt: DateTime.parse("2024-12-02T11:00:00Z"),
  ),
  CartItemModel(
    id: 3,
    cartId: 102,
    productId: 203,
    quantity: 3,
    price: "10.00",
    total: "30.00",
    createdAt: DateTime.parse("2024-12-03T08:30:00Z"),
    updatedAt: DateTime.parse("2024-12-03T09:30:00Z"),
  ),
];
