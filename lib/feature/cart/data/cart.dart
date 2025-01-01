class CartModel {
  int? id;
  int? userId;
  DateTime? createdAt;
  DateTime? updatedAt;

  CartModel({this.id, this.userId, this.createdAt, this.updatedAt});

  factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
        id: json['id'] as int?,
        userId: json['user_id'] as int?,
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
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
      };
}

List<CartModel> carts = [
  CartModel(
    id: 1,
    userId: 101,
    createdAt: DateTime.parse("2024-12-01T10:00:00Z"),
    updatedAt: DateTime.parse("2024-12-01T12:00:00Z"),
  ),
  CartModel(
    id: 2,
    userId: 102,
    createdAt: DateTime.parse("2024-12-02T09:00:00Z"),
    updatedAt: DateTime.parse("2024-12-02T11:00:00Z"),
  ),
  CartModel(
    id: 3,
    userId: 103,
    createdAt: DateTime.parse("2024-12-03T08:30:00Z"),
    updatedAt: DateTime.parse("2024-12-03T09:30:00Z"),
  ),
];
