import 'package:flutter/material.dart';
import 'package:vendor/core/themes/color_manager.dart';

class AddButtonWidget extends StatelessWidget {
  AddButtonWidget(
      {super.key, required this.name, required this.onPressed, this.raduis});
  final String name;
  final void Function()? onPressed;
  final double? raduis;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(raduis ?? 0), // Circular border
        ),
        onPressed: onPressed,
        color: ColorsManager.buttonColor,
        child: Row(
          children: [
            const Icon(
              Icons.add,
              color: Colors.white,
            ),
            const SizedBox(width: 2),
            Text(
              name,
              style: const TextStyle(color: Colors.white, fontSize: 15),
            )
          ],
        ));
  }
}
