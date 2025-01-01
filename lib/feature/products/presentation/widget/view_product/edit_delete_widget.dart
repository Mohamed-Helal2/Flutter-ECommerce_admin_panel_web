import 'package:flutter/material.dart';
import 'package:vendor/core/widget/edi_del_button.dart';

class EditDeleteWidget extends StatelessWidget {
  const EditDeleteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        EdiDelButton(
          buttoncolor: Colors.green,
          buttonname: 'Edit Details',
          textcolor: Colors.white,
          onPressed: () {},
        ),
        const SizedBox(width: 12),
        EdiDelButton(
          buttoncolor: Colors.red,
          buttonname: 'Delete Product',
          textcolor: Colors.black,
          onPressed: () {},
        )
      ],
    );
  }
}
