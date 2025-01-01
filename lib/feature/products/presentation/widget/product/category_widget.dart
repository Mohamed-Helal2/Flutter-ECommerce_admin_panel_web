import 'package:flutter/material.dart';
import 'package:vendor/core/widget/drown_down_widget.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Category',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 20,
        ),
        const DropdownMenuExample(),
        const SizedBox(
          width: 20,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.grey),
          child: const Text(
            '50',
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        const Text(
          'products',
          style: TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
