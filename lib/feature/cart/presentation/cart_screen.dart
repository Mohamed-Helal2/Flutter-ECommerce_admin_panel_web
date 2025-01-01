import 'package:flutter/material.dart';
import 'package:vendor/core/themes/color_manager.dart';
import 'package:vendor/core/widget/app_bar_widget.dart';
import 'package:vendor/feature/cart/presentation/widget/search_cart_widget.dart';
import 'package:vendor/feature/cart/presentation/widget/cart_widget/table_cart_data_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.maincolor,
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const AppBarWidget(
              pagename: 'cart',
            ),
            const SizedBox(height: 40),
            Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: ColorsManager.tableproducts,
                  border: Border.all(color: Colors.white, width: 0.2),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: const Column(
                  children: [
                    SearchCartWidget(),
                    SizedBox(height: 25),
                    TableCartDataWidget(),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
