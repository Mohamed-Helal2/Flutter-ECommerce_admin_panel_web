import 'package:flutter/material.dart';
import 'package:vendor/feature/products/presentation/widget/direcion_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.pagename});
  final String pagename;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Vendor $pagename',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        directionWidget(lastdirection: pagename),
      ],
    );
  }
}
