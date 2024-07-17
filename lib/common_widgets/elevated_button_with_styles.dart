import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ElevatedButtonWithStyles extends StatelessWidget {
  const ElevatedButtonWithStyles({
    super.key,
    required this.onPressed,
    required this.child,
    required this.backgroundColor,
    required this.foregroundColor,
  });

  final void Function() onPressed;

  final Widget child;

  final Color? backgroundColor;

  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          backgroundColor,
        ),
        foregroundColor: WidgetStatePropertyAll(
          foregroundColor,
        ),
        elevation: const WidgetStatePropertyAll(0),
        minimumSize: WidgetStatePropertyAll(
          Size(
            context.screenWidth,
            context.screenHeight * 0.05,
          ),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
