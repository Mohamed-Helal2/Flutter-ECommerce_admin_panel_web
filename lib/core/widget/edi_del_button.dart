import 'package:flutter/material.dart';

class EdiDelButton extends StatelessWidget {
  const EdiDelButton(
      {super.key,
      required this.buttoncolor,
      required this.buttonname,
      required this.textcolor,
      required this.onPressed});
  final Color buttoncolor;
  final Color textcolor;
  final String buttonname;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: buttoncolor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Circular border
      ),
      child: Text(
        buttonname,
        style: TextStyle(color: textcolor),
      ),
    );
  }
}
