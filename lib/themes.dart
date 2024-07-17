import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightThemes = ThemeData(
  useMaterial3: true,

  // ------------------------

  scaffoldBackgroundColor: Colors.grey[300],

  // ------------------------

  dividerColor: Colors.grey[200],

  // ------------------------

  appBarTheme: const AppBarTheme(
    scrolledUnderElevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
    ),
    color: Colors.white,
    titleTextStyle: TextStyle(color: Colors.black),
    iconTheme: IconThemeData(color: Colors.black),
  ),

  // ------------------------

  popupMenuTheme: const PopupMenuThemeData(
    color: Colors.white,
    elevation: 0,
  ),

  // ------------------------

  colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),

  // ------------------------

  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: const WidgetStatePropertyAll(Colors.black),
      overlayColor: WidgetStatePropertyAll(Colors.grey[200]),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    ),
  ),

  // ------------------------

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor:
          const WidgetStatePropertyAll(Color.fromRGBO(151, 8, 8, 1)),
      foregroundColor: const WidgetStatePropertyAll(Colors.white),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      overlayColor: WidgetStatePropertyAll(Colors.grey[400]),
    ),
  ),

  // ------------------------

  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      foregroundColor:
          const WidgetStatePropertyAll(Color.fromRGBO(151, 8, 8, 1)),
    ),
  ),

  // ------------------------

  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color.fromRGBO(151, 8, 8, 1),
    foregroundColor: Colors.white,
  ),
);
