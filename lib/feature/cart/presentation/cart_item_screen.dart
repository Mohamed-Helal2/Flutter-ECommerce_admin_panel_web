import 'package:flutter/material.dart';
import 'package:vendor/core/themes/color_manager.dart';
import 'package:vendor/core/widget/app_bar_widget.dart';
import 'package:vendor/feature/cart/presentation/widget/cart_widget/list_cart_item_widget.dart';
import 'package:vendor/feature/cart/presentation/widget/cart_widget/total_price_widget.dart';

class CartItemScreen extends StatelessWidget {
  const CartItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.maincolor,
      body: Container(
        padding: const EdgeInsets.all(10),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarWidget(
              pagename: 'cart items',
            ),
            SizedBox(height: 40),
            ListCartItemWidget(),
            SizedBox(height: 40),
            TotalPriceWidget(),
          ],
        ),
      ),
    );
  }
}
