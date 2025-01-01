import 'package:flutter/material.dart';
import 'package:vendor/core/widget/text_field_widget.dart';

class SearchCartWidget extends StatelessWidget {
  const SearchCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 252,
          child: AppTextFormField(
            hintText: 'Enter User Id',
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
      ],
    );
  }
}
