import 'package:alashira/consts/colors.dart';
import 'package:alashira/consts/icons.dart';
import 'package:alashira/consts/strings.dart';
import 'package:alashira/layout/home_layout/home_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async => await Get.offAll(() => const HomeLayout()),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          itemBuilder: (context, index) => TextButton(
            style: const ButtonStyle(
              alignment: Alignment.centerRight,
            ),
            onPressed: () {},
            child: Row(
              children: [
                Icon(iconsToMenu[index], color: colorsToMenu[index]),
                (context.screenWidth * 0.02).widthBox,
                menu[index].text.size(17).make(),
              ],
            ),
          ),
          separatorBuilder: (context, index) => Divider(
            color: Colors.grey[200],
          ),
          itemCount: menu.length,
        ),
      ),
    );
  }
}
