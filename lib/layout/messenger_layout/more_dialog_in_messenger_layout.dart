import 'package:alashira/consts/strings.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MoreDialogInMessengerLayout extends StatelessWidget {
  const MoreDialogInMessengerLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(color: Colors.grey[300]),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: moreInMessengerLayout.length,
        itemBuilder: (context, index) => TextButton(
          onPressed: () {},
          child: Align(
            alignment: Alignment.centerRight,
            child: moreInMessengerLayout[index].text.size(16).make(),
          ),
        ),
      ),
    );
  }
}
