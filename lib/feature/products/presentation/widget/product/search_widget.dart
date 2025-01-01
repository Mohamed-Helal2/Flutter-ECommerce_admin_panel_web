import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vendor/core/routing/app_route_constant.dart';
import 'package:vendor/core/widget/add_button_widget.dart';
import 'package:vendor/core/widget/text_field_widget.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppTextFormField(
            hintText: 'Search',
            hintStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.normal),
            preficicon: const Icon(Icons.search, color: Colors.white, size: 20),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Colors.blue),
            ),
            contentPadding: const EdgeInsets.all(15),
          ),
        ),
        const Spacer(),
        AddButtonWidget(
          name: 'Add New Products',
          onPressed: () {
            context.go(MyRouteConstant.addProducts);
          },
        ),
      ],
    );
  }
}

//
