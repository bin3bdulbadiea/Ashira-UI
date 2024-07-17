import 'package:flutter/material.dart';

class IconButtonWithStyles extends StatelessWidget {
  const IconButtonWithStyles({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  final void Function() onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          Colors.grey[200],
        ),
        foregroundColor: const WidgetStatePropertyAll(
          Colors.black,
        ),
      ),
      onPressed: onPressed,
      icon: Icon(icon),
    );
  }
}
