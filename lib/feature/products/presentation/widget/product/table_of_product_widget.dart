import 'package:flutter/material.dart';
import 'package:vendor/feature/products/presentation/widget/product/table_widget.dart';

import '../../../data/model/product_model.dart';

class TableOfProductWidget extends StatelessWidget {
  const TableOfProductWidget({super.key});

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
            headerRow(context, 'Name', 'Category', 'Description', 'Price',
                'Quantity'),
            ...products.asMap().entries.map((entry) {
              final index = entry.key;
              final product = entry.value;
              return dataRow(context, product, index);
            }),
          ]),
    );
  }
}
