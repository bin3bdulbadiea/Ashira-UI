// ignore_for_file: depend_on_referenced_packages

import 'package:alashira/common_widgets/components.dart';
import 'package:alashira/consts/colors.dart';
import 'package:alashira/consts/images.dart';
import 'package:alashira/screens/home_screen/comment_screen.dart';
import 'package:alashira/screens/home_screen/more_dialog_in_home_screen.dart.dart';
import 'package:alashira/screens/home_screen/post_screen.dart';
import 'package:alashira/screens/home_screen/share_dialog_in_home_screen_to_posts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

var isLike = false;

var likeCount = 0;

var commentCount = 0;

var shareCount = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const PostScreen()),
        child: const Icon(Icons.post_add, size: 30),
      ),
      body: ListView.separated(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        separatorBuilder: (context, index) =>
            (context.screenHeight * 0.01).heightBox,
        itemCount: 20,
        itemBuilder: (context, index) => Container(
          width: context.screenWidth,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  style: const ButtonStyle(
                    padding: WidgetStatePropertyAll(
                      EdgeInsets.all(0),
                    ),
                  ),
                  onPressed: () {
                    VxToast.show(
                      context,
                      msg: 'افتح المنشور',
                    );
                  },
                  child: Row(
                    children: [
                      profilePersonaLImage(
                        image: const AssetImage(icApp),
                      ).onTap(() {
                        VxToast.show(
                          context,
                          msg: 'افتح الملف الشخصي',
                        );
                      }),
                      (context.screenWidth * 0.05).widthBox,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            openProfileFromName(
                              context,
                              accountName: 'أحمد سالم',
                              onPressed: () {
                                VxToast.show(
                                  context,
                                  msg: 'افتح الملف الشخصي',
                                );
                              },
                            ),
                            'منذ ${NumberFormat('', 'ar_EG').format(5)} د'
                                .text
                                .make(),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () => Get.to(
                          () => const MoreDialogInHomeScreen(),
                        ),
                        icon: const Icon(Icons.more_horiz),
                      ),
                    ],
                  ),
                ),
                (context.screenHeight * 0.01).heightBox,
                postsTextButton(
                  context,
                  onPressed: () {},
                  onLongPress: () {
                    VxToast.show(context, msg: 'تم نسخ النص');
                  },
                  text: 'السلام عليكم',
                ),
                Divider(color: Colors.grey[100]),
                SizedBox(
                  height: context.screenHeight * 0.04,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              const Icon(
                                Icons.thumb_up,
                                color: redColor,
                                size: 15,
                              ),
                              (context.screenWidth * 0.03).widthBox,
                              NumberFormat('', 'ar_EG')
                                  .format(likeCount)
                                  .text
                                  .color(Colors.grey[600])
                                  .make(),
                            ],
                          ),
                        ),
                      ),
                      '${NumberFormat('', 'ar_EG').format(commentCount)} تعليقات'
                          .text
                          .color(Colors.grey[600])
                          .make(),
                      (context.screenWidth * 0.03).widthBox,
                      const CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 2,
                      ),
                      (context.screenWidth * 0.03).widthBox,
                      '${NumberFormat('', 'ar_EG').format(shareCount)} مشاركات'
                          .text
                          .color(Colors.grey[600])
                          .make(),
                    ],
                  ),
                ),
                Divider(color: Colors.grey[100]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // إعجاب
                    Expanded(
                      child: postButtons(
                        context,
                        onPressedOnIcon: () {
                          setState(() {
                            if (isLike) {
                              likeCount--;
                              isLike = false;
                            } else {
                              likeCount++;
                              isLike = true;
                            }
                          });
                        },
                        icon: isLike
                            ? const Icon(
                                Icons.thumb_up,
                                color: redColor,
                              )
                            : Icon(
                                Icons.thumb_up_outlined,
                                color: Colors.grey[600],
                              ),
                        title: 'إعجاب',
                        titleColor: isLike ? redColor : Colors.grey[600],
                      ),
                    ),
                    // تعليق
                    Expanded(
                      child: postButtons(
                        context,
                        onPressedOnIcon: () {
                          showModalBottomSheet(
                            backgroundColor: Colors.white,
                            elevation: 0,
                            isScrollControlled: true,
                            useSafeArea: true,
                            shape: const BeveledRectangleBorder(),
                            context: context,
                            builder: (context) => const Comment(),
                          );
                        },
                        icon: Icon(
                          Icons.comment_outlined,
                          color: Colors.grey[600],
                        ),
                        title: 'تعليق',
                        titleColor: Colors.grey[600],
                      ),
                    ),
                    // مشاركة
                    Expanded(
                      child: postButtons(
                        context,
                        onPressedOnIcon: () => showModalBottomSheet(
                          backgroundColor: Colors.grey[300],
                          elevation: 0,
                          showDragHandle: true,
                          context: context,
                          builder: (context) => const ShareDialogToPosts(),
                        ),
                        icon: Icon(
                          Icons.share_outlined,
                          color: Colors.grey[600],
                        ),
                        title: 'مشاركة',
                        titleColor: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
