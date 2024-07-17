import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.maxLength,
    this.validator,
    this.onFieldSubmitted,
    this.keyboardType,
    this.labelText,
    this.suffixPressed,
    this.suffixIcon,
    required this.obscureText,
    this.onTap,
    this.hintText,
  });

  final TextEditingController? controller;
  final int? maxLength;
  final String? Function(String?)? validator;
  final void Function(String)? onFieldSubmitted;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? labelText;
  final String? hintText;
  final void Function()? suffixPressed;
  final IconData? suffixIcon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextFormField(
        
        onTap: onTap,
        controller: controller,
        maxLength: maxLength,
        validator: validator,
        onFieldSubmitted: onFieldSubmitted,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Colors.black,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.black,
          ),
          suffixIcon: IconButton(
            onPressed: suffixPressed,
            icon: Icon(suffixIcon),
          ),
          isDense: true,
          contentPadding: const EdgeInsets.all(12),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
