import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final String hintText;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final bool? isobscureText;
  final Widget? suffixIcon;
  final Widget? preficicon;
  final Function(String)? onChanged;
  final Color? fillColor;
  final Function(String?)? validator;
  final TextEditingController? controller;
  final bool? autofocus;
  final Function()? onTap;
  final Function(PointerDownEvent)? onTapOutside;
  final Widget? icon;
  final bool? filled;
  const AppTextFormField(
      {super.key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      required this.hintText,
      this.hintStyle,
      this.style,
      this.isobscureText,
      this.suffixIcon,
      this.fillColor,
      this.validator,
      this.controller,
      this.preficicon,
      this.onChanged,
      this.autofocus,
      this.onTap,
      this.onTapOutside,
      this.icon,
      this.filled});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: (value) {
          return validator!(value);
        },
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        onTap: onTap,
        autofocus: autofocus ?? false,
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
            filled: filled ?? false,
            fillColor: fillColor ?? Colors.grey,
            isDense: true,
            contentPadding: contentPadding ??
                const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            icon: icon,
// Focus
            focusedBorder: focusedBorder ??
                OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                    )),
// Enabled
            enabledBorder: enabledBorder ??
                OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.3)),
//Error               focusedBorder: focusedBorder ??
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Colors.red, width: 1.3)),
// FocusedErrorBorder
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Colors.red, width: 1.3)),
            hintText: hintText,
            hintStyle: hintStyle ??
                const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),
            suffixIcon: suffixIcon,
            prefixIcon: preficicon),
        obscureText: isobscureText ?? false,
        style: style ??
            const TextStyle(
                fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w400));
  }
}
