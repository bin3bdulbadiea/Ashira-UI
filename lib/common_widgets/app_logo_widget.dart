import 'package:alashira/consts/images.dart';
import 'package:flutter/material.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(icApp, width: 60, height: 60);
  }
}
