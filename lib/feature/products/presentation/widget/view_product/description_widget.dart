import 'package:flutter/material.dart';
import 'package:vendor/core/themes/color_manager.dart';
import 'package:vendor/feature/products/data/model/product_model.dart';
import 'package:vendor/feature/products/presentation/widget/view_product/edit_delete_widget.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: ColorsManager.tableproducts,
          border: Border.all(color: Colors.white, width: 0.2),
          borderRadius: BorderRadius.circular(7),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.name!,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              product.description ?? "No description available",
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 20),
                SizedBox(width: 5),
                Text(
                  '4.5',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Text(
              '\$${product.price}',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 15),
            const EditDeleteWidget()
          ],
        ),
      ),
    );
  }
}
