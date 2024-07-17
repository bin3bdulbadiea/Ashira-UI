import 'package:alashira/common_widgets/components.dart';
import 'package:alashira/common_widgets/custom_elevated_button.dart';
import 'package:alashira/consts/images.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ShareDialogToPosts extends StatelessWidget {
  const ShareDialogToPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          onVerticalDragDown: (details) =>
              FocusManager.instance.primaryFocus?.unfocus(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          profilePersonaLImage(image: const AssetImage(icApp)),
                          (context.screenWidth * 0.03).widthBox,
                          const Text(
                            'أحمد سالم',
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 17,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      (context.screenHeight * 0.01).heightBox,
                      TextFormField(
                        maxLines: 5,
                        decoration: const InputDecoration(
                          border:
                              UnderlineInputBorder(borderSide: BorderSide.none),
                          hintText: 'قل شيئاً عما تريد مشاركته..',
                        ),
                      ),
                    ],
                  ),
                ),
                (context.screenHeight * 0.02).heightBox,
                SizedBox(
                  width: context.screenWidth * 0.5,
                  child: CustomElevatedButton(
                    onPressed: () {},
                    child: 'مشاركة الآن'.text.make(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
