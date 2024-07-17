import 'package:alashira/consts/images.dart';
import 'package:alashira/consts/strings.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ChangeProfileInformation extends StatelessWidget {
  const ChangeProfileInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: 'تعديل الملف الشخصي'.text.bold.size(18).make(),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SizedBox(
          width: context.screenWidth,
          height: context.screenHeight,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    'الصورة الشخصية'.text.bold.size(22).make(),
                    const Spacer(),
                    TextButton(
                      style: const ButtonStyle(
                        padding: WidgetStatePropertyAll(EdgeInsets.zero),
                      ),
                      onPressed: () {},
                      child: 'تعديل'.text.size(18).red400.make(),
                    ),
                  ],
                ),
                (context.screenHeight * 0.02).heightBox,
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                      image: AssetImage(icApp),
                      fit: BoxFit.contain,
                    ),
                  ),
                  width: context.screenWidth * 0.4,
                  height: context.screenHeight * 0.2,
                ),
                Divider(color: Colors.grey[300]),
                Row(
                  children: [
                    'صورة الغلاف'.text.bold.size(22).make(),
                    const Spacer(),
                    TextButton(
                      style: const ButtonStyle(
                        padding: WidgetStatePropertyAll(EdgeInsets.zero),
                      ),
                      onPressed: () {},
                      child: 'تعديل'.text.size(18).red400.make(),
                    ),
                  ],
                ),
                (context.screenHeight * 0.02).heightBox,
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    image: const DecorationImage(
                      image: AssetImage(icApp),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: context.screenWidth,
                  height: context.screenHeight * 0.3,
                ),
                Divider(color: Colors.grey[300]),
                Row(
                  children: [
                    'التفاصيل'.text.bold.size(22).make(),
                    const Spacer(),
                    TextButton(
                      style: const ButtonStyle(
                        padding: WidgetStatePropertyAll(EdgeInsets.zero),
                      ),
                      onPressed: () {},
                      child: 'تعديل'.text.size(18).red400.make(),
                    ),
                  ],
                ),
                personaLInformation(index: 0),
                personaLInformation(index: 1),
                personaLInformation(index: 2),
                personaLInformation(index: 3),
                personaLInformation(index: 4),
              ],
            ),
          ),
        ),
      ),
    );
  }

  personaLInformation({required int index}) => TextButton(
        style: const ButtonStyle(
          alignment: Alignment.centerRight,
        ),
        onPressed: () {},
        child: Row(
          children: [
            profile[index].text.size(16).make(),
            const Spacer(),
            const Icon(Icons.edit, size: 15),
          ],
        ),
      );
}
