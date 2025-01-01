

import 'package:flutter/material.dart';
import 'package:vendor/feature/order/data/order_model.dart';
import 'package:vendor/feature/order/presentation/widget/table_order_widget.dart';

class TableOrderDataWidget extends StatelessWidget {
  const TableOrderDataWidget({super.key});

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
          // Header row
          orderheaderRow(
            context,
            date: 'Date',
            orderId: 'Order Id',
            userId: 'User Id',
            status: 'Status',
            price: 'Price',
          ),
          // Data rows
          ...orderList.asMap().entries.map((entry) {
            final index = entry.key;
            final order = entry.value;
            return orderdataRow(
              context,
              order: order,
              index: index,
            );
          })
        ],
      ),
    );
  }
}
