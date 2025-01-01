import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vendor/core/routing/app_route_constant.dart';
import 'package:vendor/core/themes/color_manager.dart';
import 'package:vendor/feature/cart/data/cart.dart';
import 'package:vendor/feature/products/presentation/widget/product/table_widget.dart';

TableRow cartheaderRow(BuildContext context, String userid, String cartid,
    ) {
  return TableRow(
    decoration: const BoxDecoration(color: ColorsManager.maincolor),
    children: [
        tableCell(cartid, isHeader: true),
            tableCell(userid, isHeader: true),

    
     
    ],
  );
}

TableRow cartdataRow(BuildContext context, CartModel cart ,int index) {
  return TableRow(
    decoration: BoxDecoration(
        color: index % 2 == 0
            ? const Color.fromARGB(255, 104, 103, 103)
            : const Color.fromARGB(255, 82, 81, 81)),
    children: [
       InkWell(
        onTap: () {
          context.go(MyRouteConstant.cartitems);
        },
        child: tableCell(cart.id.toString())),
      tableCell(cart.userId.toString()),
       
      
    ],
  );
}
