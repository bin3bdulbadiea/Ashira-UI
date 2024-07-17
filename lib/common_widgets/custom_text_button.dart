import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.icon,
  });

  final void Function() onPressed;

  final IconData? icon;

  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        minimumSize: WidgetStatePropertyAll(
          Size(
            context.screenWidth,
            context.screenHeight * 0.02,
          ),
        ),
        textStyle: const WidgetStatePropertyAll(
          TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          Icon(icon),
          (context.screenWidth * 0.03).widthBox,
          Text(text),
        ],
      ),
    );
  }
}
