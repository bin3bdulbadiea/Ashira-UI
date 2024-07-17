import 'package:flutter/material.dart';

class SearchLayout extends StatelessWidget {
  const SearchLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var searchController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          controller: searchController,
          autofocus: true,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.grey[200],
            isDense: true,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5,
            ),
            hintText: 'بحث',
          ),
        ),
        centerTitle: true,
      ),
      // body: 'searchLayout'.text.makeCentered(),
    );
  }
}
