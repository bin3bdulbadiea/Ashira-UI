// ignore_for_file: depend_on_referenced_packages

import 'package:alashira/consts/images.dart';
import 'package:alashira/layout/notifications_layout/more_dialog_in_notifications_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  void initState() {
    initializeDateFormatting("ar_EG", null);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: 'الإشعارات'.text.bold.size(20).make(),
      ),
      body: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: 20,
        itemBuilder: (context, index) => Column(
          children: [
            TextButton(
              onPressed: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: AssetImage(icApp),
                  ),
                  const Spacer(),
                  Expanded(
                    flex: 15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'أُعجب أحمد عبد البديع بمنشورك "السلام عليكم ورحمة الله وبركاته، أهلا وسهلا بكم في تطبيقنا عشيرة حيث يمكنك التواصل مع العالم في بيئة آمنة وتفاعلية ومرحة"',
                          maxLines: 3,
                          style: TextStyle(overflow: TextOverflow.ellipsis),
                        ),
                        (context.screenHeight * 0.005).heightBox,
                        Row(
                          children: [
                            DateFormat.yMMMMEEEEd('ar_EG')
                                .format(DateTime.now())
                                .text
                                .gray400
                                .size(10)
                                .make(),
                            '، الساعة ${NumberFormat('', 'ar_EG').format(4)}'
                                .text
                                .gray400
                                .size(10)
                                .make(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () => Get.to(
                      () => const MoreDialogInNotificationsScreen(),
                    ),
                    icon: const Icon(Icons.more_horiz),
                  ),
                ],
              ),
              onLongPress: () => Get.to(
                () => const MoreDialogInNotificationsScreen(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
