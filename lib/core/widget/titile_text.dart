import 'package:flutter/material.dart';
import 'package:vendor/feature/products/presentation/widget/direcion_widget.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style: const TextStyle(
              fontSize: 25, color: Color.fromARGB(255, 205, 203, 203)),
        ),
        Spacer(),
        directionWidget(lastdirection: name)
      ],
    );
  }
}
