import 'package:church_info_app/share/service/theme_service.dart';
import 'package:flutter/material.dart';

class SignTextField extends StatefulWidget {
  const SignTextField({
    super.key,
    required this.label,
    required this.hintMsg,
    required this.isOobscureText,
    required this.leadingIcon,
  });

  final String label;
  final String hintMsg;
  final bool isOobscureText;
  final IconData leadingIcon;

  @override
  State<SignTextField> createState() => _SignTextFieldState();
}

class _SignTextFieldState extends State<SignTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isOobscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(
          widget.leadingIcon,
        ),
        suffixIcon: const Icon(
          Icons.clear,
        ),
        label: Text(
          widget.label,
          style: TextStyle(
            color: context.theme.color.primary,
          ),
        ),
        hintText: widget.hintMsg,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: context.theme.color.primary,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: context.theme.color.secondary,
          ),
        ),
        hoverColor: context.theme.color.tertiary,
      ),
    );
  }
}
