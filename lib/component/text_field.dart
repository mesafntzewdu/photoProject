import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  TextFields(
      {super.key,
      required this.disabled,
      required this.hintText,
      required this.onTap,
      required this.icon,
      required this.cursorStyle});
  bool disabled;
  String hintText;
  IconData icon;
  Function() onTap;
  MouseCursor cursorStyle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 49,
        child: TextField(
          textCapitalization: TextCapitalization.none,
          cursorHeight: 40,
          mouseCursor: cursorStyle,
          onTap: onTap,
          enabled: disabled,
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
