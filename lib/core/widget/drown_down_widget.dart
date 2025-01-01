import 'package:flutter/material.dart';

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample(
      {super.key, this.backgroundColor, this.selectedItemColor});
  final Color? backgroundColor;
  final Color? selectedItemColor;

  @override
  _DropdownMenuExampleState createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  final List<String> items = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

  String selectedItem = 'Option 3';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: widget.backgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(2),
      child: DropdownButton<String>(
        value: selectedItem,
        hint: const Text('Select an option'),
        items: items.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(item,
                style: const TextStyle(
                    color: Colors.green, fontWeight: FontWeight.bold)),
          );
        }).toList(),
        onChanged: (String? value) {
          setState(() {
            selectedItem = value!;
          });
        },
        onTap: () {},
        dropdownColor: Colors.white,
        icon: const Icon(Icons.arrow_downward),
      ),
    );
  }
}
