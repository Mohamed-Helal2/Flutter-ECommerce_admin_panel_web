import 'package:flutter/material.dart';
import 'package:vendor/feature/cart/data/cart.dart';
import 'package:vendor/feature/cart/presentation/widget/cart_widget/table_cart_widget.dart';
 
class TableCartDataWidget extends StatelessWidget {
  const TableCartDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Table(
          border: TableBorder.all(
            color: Colors.black,
            width: 1,
          ),
          children: [
            cartheaderRow(context,'User id', 'Cart Id'),
            ...carts.asMap().entries.map((entry) {
              final index = entry.key;
              final cart = entry.value;
              return cartdataRow(context, cart, index);
            }),
          ]),
    );
  }
}
