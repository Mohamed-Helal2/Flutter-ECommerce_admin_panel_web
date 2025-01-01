import 'package:flutter/material.dart';
import 'package:vendor/core/widget/text_field_widget.dart';

class add_text_field extends StatelessWidget {
  const add_text_field(
      {super.key, required this.contentpadding, required this.hint});
  final String hint;
  final double contentpadding;
  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: hint,
      contentPadding: EdgeInsets.all(contentpadding),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(color: Colors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(color: Colors.blue),
      ),
    );
  }
}
