import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final double? width;
  final double? height;
  final String text;
  final VoidCallback onPressed;

  const CustomElevatedButton({
    super.key,
    this.width,
    this.height, required this.text, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width ?? 100, height ?? 40),
        backgroundColor: Color(0xff00455D),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
