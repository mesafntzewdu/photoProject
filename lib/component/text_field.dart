import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFields extends StatelessWidget {
  TextFields(
      {super.key,
      required this.readOnly,
      this.maxLength,
      required this.hintText,
      required this.onTap,
      this.icon,
      required this.cursorStyle});
  bool readOnly;
  int? maxLength;
  String hintText;
  IconData? icon;
  Function() onTap;
  MouseCursor cursorStyle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 100,
        child: TextField(
          style: Theme.of(context).textTheme.bodyMedium,
          maxLength: maxLength,
          readOnly: readOnly,
          textCapitalization: TextCapitalization.none,
          cursorHeight: 40,
          mouseCursor: cursorStyle,
          onTap: onTap,
          decoration: InputDecoration(
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            hintText: hintText,
            prefixIcon: Icon(icon),
          ),
        ),
      ),
    );
  }
}
