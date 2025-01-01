import 'package:flutter/material.dart';
import 'package:vendor/core/themes/color_manager.dart';
import 'package:vendor/feature/cart/data/cart_item_model.dart';
import 'package:vendor/feature/cart/presentation/widget/cart_widget/cart_item_widget.dart';

class ListCartItemWidget extends StatelessWidget {
  const ListCartItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: ColorsManager.tableproducts,
        border: Border.all(color: Colors.white, width: 0.2),
        borderRadius: BorderRadius.circular(7),
      ),
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return const CartItemWidget();
         },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(color: Colors.grey, thickness: 1);
        },
      ),
    );
  }
}

 