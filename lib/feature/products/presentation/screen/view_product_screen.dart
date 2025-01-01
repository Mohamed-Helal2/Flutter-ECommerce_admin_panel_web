import 'package:flutter/material.dart';
import 'package:vendor/core/themes/color_manager.dart';
import 'package:vendor/feature/products/data/model/product_model.dart';
import 'package:vendor/core/widget/titile_text.dart';
import 'package:vendor/feature/products/presentation/widget/view_product/description_widget.dart';
import 'package:vendor/feature/products/presentation/widget/view_product/image_widget.dart';
import 'package:vendor/feature/products/presentation/widget/view_product/list_products_widget.dart';

class ViewProductScreen extends StatelessWidget {
  const ViewProductScreen({super.key, required this.product});
  final ProductModel? product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.maincolor,
      body: SingleChildScrollView(
        // Use SingleChildScrollView here
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleText(name: 'View Product'),
            const SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: ImageWidget()),
                const SizedBox(width: 20),
                Expanded(
                  child: DescriptionWidget(
                    product: product!,
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            ListProductsWidget()
          ],
        ),
      ),
    );
  }
}
