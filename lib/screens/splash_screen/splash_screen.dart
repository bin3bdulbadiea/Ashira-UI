import 'package:alashira/common_widgets/app_logo_widget.dart';
import 'package:alashira/screens/auth_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      // auth.authStateChanges().listen((event) {
      //   if (event == null && mounted) {
      //     Get.offAll(() => const LoginScreen());
      //   } else {
      //     Get.offAll(() => const HomeLayout());
      //   }
      // });
      Get.offAll(() => const LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Container(
          width: context.screenWidth,
          height: context.screenHeight,
          alignment: Alignment.center,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppLogoWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
