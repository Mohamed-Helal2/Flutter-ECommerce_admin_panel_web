import 'package:flutter/widgets.dart';

class name_add_widget extends StatelessWidget {
  const name_add_widget({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
          fontSize: 17, color: Color.fromARGB(255, 203, 203, 203)),
    );
  }
}
