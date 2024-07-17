import 'package:alashira/consts/images.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var postController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: 'إضافة منشور'.text.size(18).bold.make(),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ElevatedButton(
              onPressed: () {},
              child: 'نشر'.text.make(),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    maxRadius: 25,
                    backgroundImage: AssetImage(icApp),
                  ),
                  (context.screenWidth * 0.05).widthBox,
                  'احمد عبد البديع'.text.bold.size(15).make(),
                ],
              ),
              TextFormField(
                controller: postController,
                keyboardType: TextInputType.text,
                maxLines: 10,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(borderSide: BorderSide.none),
                  hintText: 'اكتب ما تريد ..',
                  hintStyle: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              const Icon(Icons.keyboard_arrow_up),
              Divider(color: Colors.grey[200]),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    const Icon(Icons.camera_alt, size: 25, color: Colors.red),
                    (context.screenWidth * 0.02).widthBox,
                    'كاميرا'.text.make(),
                  ],
                ),
              ),
              Divider(color: Colors.grey[200]),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    const Icon(Icons.photo_library,
                        size: 25, color: Colors.green),
                    (context.screenWidth * 0.02).widthBox,
                    'صورة / فيديو'.text.make(),
                  ],
                ),
              ),
              Divider(color: Colors.grey[200]),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    const Icon(
                      Icons.tag_faces_rounded,
                      size: 25,
                      color: Colors.orange,
                    ),
                    (context.screenWidth * 0.02).widthBox,
                    'شعور / نشاط'.text.make(),
                  ],
                ),
              ),
              Divider(color: Colors.grey[200]),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    const Icon(Icons.local_offer,
                        size: 25, color: Colors.indigo),
                    (context.screenWidth * 0.02).widthBox,
                    'إشارة إلى شخص'.text.make(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
