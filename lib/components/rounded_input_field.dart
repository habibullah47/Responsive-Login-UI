import 'package:flutter/material.dart';
import 'package:login_signin_ui/components/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  const RoundedInputField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.onChanged,
    this.suffixIcon,
    required this.obscureText,
  }) : super(key: key);
  final String hintText;
  final Icon icon;
  final ValueChanged<String> onChanged;
  final Icon? suffixIcon;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: obscureText,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          icon: icon,
          border: InputBorder.none,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
