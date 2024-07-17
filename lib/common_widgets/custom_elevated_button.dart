import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.onPressed,
    this.child,
  });

  final void Function()? onPressed;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
    ).box.width(context.screenWidth - 30).make();
  }
}
