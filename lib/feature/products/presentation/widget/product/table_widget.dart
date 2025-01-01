import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vendor/core/routing/app_route_constant.dart';
import 'package:vendor/core/themes/color_manager.dart';

import '../../../data/model/product_model.dart';

Widget tableCell(String text, {bool isHeader = false}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      text,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontWeight: isHeader ? FontWeight.w500 : FontWeight.normal,
          color: Colors.white),
      textAlign: isHeader ? TextAlign.center : TextAlign.start,
    ),
  );
}

TableRow headerRow(BuildContext context, String name, String category,
    String description, String price, String quantity) {
  return TableRow(
    decoration: const BoxDecoration(color: ColorsManager.maincolor),
    children: [
      tableCell(name, isHeader: true),
      tableCell(category, isHeader: true),
      tableCell(price, isHeader: true),
      tableCell(quantity, isHeader: true),
      tableCell(description, isHeader: true),
        
    ],
  );
}

TableRow dataRow(BuildContext context, ProductModel product, int index) {
  return TableRow(
    decoration: BoxDecoration(
        color: index % 2 == 0
            ? const Color.fromARGB(255, 104, 103, 103)
            : const Color.fromARGB(255, 82, 81, 81)),
    children: [
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              product.name!,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          IconButton(
              padding: const EdgeInsets.all(0),
              onPressed: () {
                context.go(
                  MyRouteConstant.viewProducts,
                  extra: product,
                );
              },
              icon: const Icon(Icons.remove_red_eye, color: Colors.white))
        ],
      ),
      tableCell(product.categoryId!.toString()),
      tableCell('\$${product.price!.toStringAsFixed(2)}'),
      tableCell(product.quantity.toString()),
      tableCell(product.description!),
    ],
  );
}
