import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vendor/core/routing/app_route_constant.dart';
import 'package:vendor/core/widget/add_button_widget.dart';

class AddWidget extends StatelessWidget {
  const AddWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Categories',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        AddButtonWidget(
          raduis: 10,
          name: 'Add New Categories',
          onPressed: () {
            context.go(MyRouteConstant.addcategories);
          },
        ),
      ],
    );
  }
}
