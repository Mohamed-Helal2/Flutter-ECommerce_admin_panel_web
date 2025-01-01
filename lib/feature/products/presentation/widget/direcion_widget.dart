import 'package:flutter/material.dart';

class directionWidget extends StatelessWidget {
  const directionWidget({super.key, required this.lastdirection});
  final String lastdirection;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const name(wname: 'Vendor', color: Colors.green),
        const Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey,
        ),
        const name(wname: 'Admin', color: Colors.grey),
        const Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey,
        ),
        name(wname: lastdirection, color: Colors.grey),
      ],
    );
  }
}

class name extends StatelessWidget {
  const name({super.key, required this.wname, required this.color});
  final String wname;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      wname,
      style:
          TextStyle(color: color, fontWeight: FontWeight.normal, fontSize: 12),
    );
  }
}
