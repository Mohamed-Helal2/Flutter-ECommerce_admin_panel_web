import 'package:flutter/material.dart';
import 'package:vendor/core/themes/color_manager.dart';
import 'package:vendor/core/widget/app_bar_widget.dart';
import 'package:vendor/feature/order/presentation/widget/search_order_widget.dart';
import 'package:vendor/feature/order/presentation/widget/table_order_data_widget.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

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
              pagename: 'Orders',
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
                    SearchOrderWidget(),
                    SizedBox(height: 25),
                    TableOrderDataWidget(),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
