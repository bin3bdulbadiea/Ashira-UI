import 'package:alashira/consts/images.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: TextButton(
          style: const ButtonStyle(
            padding: WidgetStatePropertyAll(
              EdgeInsets.symmetric(horizontal: 0, vertical: 5),
            ),
          ),
          onPressed: () {},
          child: SizedBox(
            width: context.screenWidth * 0.35,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(icApp),
                  radius: 15,
                ),
                (context.screenWidth * 0.02).widthBox,
                'احمد عبد البديع'.text.bold.size(14).make(),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            color: Colors.grey[600],
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            color: Colors.grey[600],
            onPressed: () {},
            icon: const Icon(Icons.video_call_rounded),
          ),
        ],
      ),
      bottomSheet: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 5,
                  ),
                  hintText: 'ماذا تريد أن تكتب',
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.send_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
