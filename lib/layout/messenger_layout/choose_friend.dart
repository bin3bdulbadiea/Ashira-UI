import 'package:alashira/consts/images.dart';
import 'package:alashira/layout/messenger_layout/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ChooseFriend extends StatelessWidget {
  const ChooseFriend({super.key});

  @override
  Widget build(BuildContext context) {
    var searchControllerToMessenger = TextEditingController();

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: 'اختيار صديق'.text.bold.size(18).make(),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                autofocus: true,
                controller: searchControllerToMessenger,
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
            ),
            Expanded(
              child: ListView.builder(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                itemCount: 20,
                itemBuilder: (context, index) => ListTile(
                  tileColor: Colors.white,
                  onTap: () => showModalBottomSheet(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    isScrollControlled: true,
                    useSafeArea: true,
                    shape: const BeveledRectangleBorder(),
                    context: context,
                    builder: (context) => const ChatScreen(),
                  ),
                  leading: const CircleAvatar(
                    maxRadius: 20,
                    backgroundImage: AssetImage(icApp),
                  ),
                  title: 'احمد عبد البديع'.text.bold.make(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
