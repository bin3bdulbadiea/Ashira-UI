import 'package:alashira/consts/images.dart';
import 'package:alashira/layout/messenger_layout/choose_friend.dart';
import 'package:alashira/layout/messenger_layout/chat_screen.dart';
import 'package:alashira/layout/messenger_layout/more_dialog_in_messenger_layout.dart';
import 'package:alashira/layout/messenger_layout/on_long_press_dialog_in_messenger_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var searchControllerToMessenger = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: 'المحادثات'.text.bold.size(20).make(),
        actions: [
          IconButton(
            onPressed: () => Get.to(
              () => const MoreDialogInMessengerLayout(),
            ),
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'edit',
        onPressed: () => Get.to(() => const ChooseFriend()),
        child: const Icon(Icons.edit),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
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
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              padding: EdgeInsets.zero,
              itemCount: 20,
              itemBuilder: (context, index) => ListTile(
                onTap: () => showModalBottomSheet(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  isScrollControlled: true,
                  useSafeArea: true,
                  shape: const BeveledRectangleBorder(),
                  context: context,
                  builder: (context) => const ChatScreen(),
                ),
                onLongPress: () => Get.to(
                  () => const OnLongPressDialogInMessengerLayout(),
                ),
                tileColor: Colors.white,
                leading: const CircleAvatar(
                  maxRadius: 20,
                  backgroundImage: AssetImage(icApp),
                ),
                title: 'احمد عبد البديع'
                    .text
                    .bold
                    .maxLines(1)
                    .overflow(TextOverflow.ellipsis)
                    .make(),
                subtitle:
                    'السلام عليكم ورحمة الله وبركاته، كيف حالك يا صديقي أتمنى أن تكون بخير وكل عام وأنت بخير'
                        .text
                        .maxLines(2)
                        .overflow(TextOverflow.ellipsis)
                        .make(),
                trailing: '3:39 ص'.text.make(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
