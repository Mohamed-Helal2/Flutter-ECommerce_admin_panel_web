
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:vendor/core/routing/app_route_constant.dart';
import 'package:vendor/core/themes/color_manager.dart';
import 'package:vendor/feature/order/data/order_model.dart';
import 'package:vendor/feature/products/presentation/widget/product/table_widget.dart';

/// Generates a header row for the orders table.
TableRow orderheaderRow(
  BuildContext context, {
  required String date,
  required String orderId,
  required String userId,
  required String status,
  required String price,
}) {
  const headerColor = ColorsManager.maincolor;

  return TableRow(
    decoration: const BoxDecoration(color: headerColor),
    children: [
      tableCell(date, isHeader: true),
      tableCell(orderId, isHeader: true),
      tableCell(userId, isHeader: true),
      tableCell(status, isHeader: true),
      tableCell(price, isHeader: true),
    ],
  );
}

/// Generates a data row for the orders table.
TableRow  orderdataRow(
  BuildContext context, {
  required OrderModel order,
  required int index,
}) {
  final rowColor = index.isEven
      ? const Color.fromARGB(255, 104, 103, 103)
      : const Color.fromARGB(255, 82, 81, 81);

  // Format the date
  final formattedDate = order.createdAt != null
      ? DateFormat('dd/MM/yyyy').format(order.createdAt!)
      : 'N/A';

  // Status styling
  final statusColor = order.status == "completed"
      ? Colors.green
      : (order.status == "cancelled" ? Colors.red : Colors.grey);

  return TableRow(
    decoration: BoxDecoration(color: rowColor),
    children: [
      InkWell(
        onTap: () => context.go(MyRouteConstant.cartitems),
        child: tableCell(formattedDate),
      ),
      tableCell(order.id?.toString() ?? 'N/A'),
      tableCell(order.userId?.toString() ?? 'N/A'),
      Container(

        decoration: BoxDecoration(
           color: statusColor,
          borderRadius: BorderRadius.circular(5)
        ),
       margin: const EdgeInsets.all(7),
        alignment: Alignment.center,
        child: Text(
          order.status ?? 'N/A',
          style:const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      tableCell(order.price ?? 'N/A'),
    ],
  );
}
