import 'package:alashira/consts/images.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class FriendRequestScreen extends StatelessWidget {
  const FriendRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: 'طلبات الصداقة'.text.bold.size(20).make(),
      ),
      body: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: 20,
        itemBuilder: (context, index) => Column(
          children: [
            TextButton(
              style: const ButtonStyle(
                shape: WidgetStatePropertyAll(RoundedRectangleBorder()),
              ),
              onPressed: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    maxRadius: 40,
                    backgroundImage: AssetImage(icApp),
                  ),
                  const Spacer(),
                  Expanded(
                    flex: 15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        'أرسل أحمد عبد البديع طلب صداقة إليك'
                            .text
                            .maxLines(2)
                            .overflow(TextOverflow.ellipsis)
                            .make(),
                        (context.screenHeight * 0.005).heightBox,
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: 'قبول'.text.make(),
                              ),
                            ),
                            (context.screenWidth * 0.02).widthBox,
                            Expanded(
                              child: OutlinedButton(
                                onPressed: () {},
                                child: 'رفض'.text.make(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
