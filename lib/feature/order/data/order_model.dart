
class OrderModel {
  int? id;
  int? userId;
  String? status;
  String? price;
  int? quantity;
  DateTime? createdAt;
  DateTime? updatedAt;

  OrderModel({
    this.id,
    this.userId,
    this.status,
    this.price,
    this.quantity,
    this.createdAt,
    this.updatedAt,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
        id: json['id'] as int?,
        userId: json['user_id'] as int?,
        status: json['status'] as String?,
        price: json['price'] as String?,
        quantity: json['quantity'] as int?,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.parse(json['updated_at'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'user_id': userId,
        'status': status,
        'price': price,
        'quantity': quantity,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
      };
}


List<OrderModel> orderList = [
  OrderModel(
    id: 1,
    userId: 101,
    status: 'pending',
    price: '99.99',
    quantity: 2,
    createdAt: DateTime.parse('2024-01-01T12:00:00'),
    updatedAt: DateTime.parse('2024-01-02T14:00:00'),
  ),
  OrderModel(
    id: 2,
    userId: 102,
    status: 'completed',
    price: '49.50',
    quantity: 1,
    createdAt: DateTime.parse('2024-01-03T10:00:00'),
    updatedAt: DateTime.parse('2024-01-03T15:00:00'),
  ),
  OrderModel(
    id: 3,
    userId: 103,
    status: 'cancelled',
    price: '25.00',
    quantity: 3,
    createdAt: DateTime.parse('2024-01-04T09:30:00'),
    updatedAt: DateTime.parse('2024-01-05T10:45:00'),
  ),
];
