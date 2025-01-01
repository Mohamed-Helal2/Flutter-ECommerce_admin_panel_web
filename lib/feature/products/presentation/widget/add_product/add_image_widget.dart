import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class AddImageWidget extends StatelessWidget {
  const AddImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: Colors.grey,
      borderType: BorderType.Rect,
      radius: const Radius.circular(2),
      strokeWidth: 1,
      dashPattern: const [6, 6], // Adjust dash length and space between dashes
      padding: const EdgeInsets.all(6),
      child: _buildInnerContainer(),
    );
  }

  Widget _buildInnerContainer() {
    return Container(
      padding: const EdgeInsets.all(15),
      child: const Text(
        'Add Image',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
      ),
    );
  }
}
