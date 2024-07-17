import 'package:alashira/firebase_options.dart';
import 'package:alashira/screens/splash_screen/splash_screen.dart';
import 'package:alashira/themes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      textDirection: TextDirection.rtl,
      debugShowCheckedModeBanner: false,
      title: 'عشيرة',
      theme: lightThemes,
      // darkTheme: dartThemes,
      home: const SplashScreen(),
    );
  }
}
