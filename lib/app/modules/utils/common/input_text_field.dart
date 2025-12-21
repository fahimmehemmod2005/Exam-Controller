import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputField extends StatelessWidget {
  final String labelText;
  final String? hintText;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType? keyboardType;
  final double? width;
  final double? height;
  final Widget? suffixIcon;

  const InputField({
    super.key,
    required this.labelText,
    this.hintText,
    this.controller,
    this.obscureText = false,
    this.keyboardType,
    this.width,
    this.height,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText),
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hintText ?? '',
            contentPadding: EdgeInsets.symmetric(
              horizontal: 12.w,
              vertical: 14.h,
            ),
            border: OutlineInputBorder(),
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }
}
