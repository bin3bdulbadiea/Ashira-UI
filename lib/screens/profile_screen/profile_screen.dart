// ignore_for_file: depend_on_referenced_packages

import 'package:alashira/common_widgets/components.dart';
import 'package:alashira/common_widgets/elevated_button_with_styles.dart';
import 'package:alashira/consts/colors.dart';
import 'package:alashira/consts/images.dart';
import 'package:alashira/layout/home_layout/home_layout.dart';
import 'package:alashira/screens/home_screen/comment_screen.dart';
import 'package:alashira/screens/home_screen/home_screen.dart';
import 'package:alashira/screens/home_screen/more_dialog_in_home_screen.dart.dart';
import 'package:alashira/screens/home_screen/share_dialog_in_home_screen_to_posts.dart';
import 'package:alashira/screens/profile_screen/change_profile_information.dart';
import 'package:alashira/screens/profile_screen/more_dialog_in_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:intl/intl.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async => await Get.offAll(() => const HomeLayout()),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  coverPersonaLImage(context),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                    child: profileImage(context),
                  ),
                ],
              ),
              (context.screenHeight * 0.02).heightBox,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'احمد عبد البديع',
                      maxLines: 3,
                      style: TextStyle(
                        fontSize: 25,
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    (context.screenHeight * 0.02).heightBox,
                    Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: ElevatedButtonWithStyles(
                            backgroundColor: Colors.grey[200],
                            foregroundColor: Colors.black,
                            onPressed: () => Get.to(
                              () => const ChangeProfileInformation(),
                            ),
                            child: 'تعديل الملف الشخصي'.text.make(),
                          ),
                        ),
                        (context.screenWidth * 0.02).widthBox,
                        Expanded(
                          child: ElevatedButtonWithStyles(
                            onPressed: () => Get.to(
                              () => const MoreDialogInProfileScreen(),
                            ),
                            backgroundColor: Colors.grey[200],
                            foregroundColor: Colors.black,
                            child: const Icon(Icons.more_horiz),
                          ),
                        ),
                      ],
                    ),
                    (context.screenHeight * 0.01).heightBox,
                    ElevatedButtonWithStyles(
                      backgroundColor: Colors.red[300],
                      foregroundColor: Colors.white,
                      onPressed: () {},
                      child: 'قائمة الأصدقاء'.text.make(),
                    ),
                    (context.screenHeight * 0.03).heightBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        'المنشورات'.text.bold.size(20).make(),
                        (context.screenHeight * 0.01).heightBox,
                        ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
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
                                            () =>
                                                const MoreDialogInHomeScreen(),
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
                                                (context.screenWidth * 0.03)
                                                    .widthBox,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
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
                                          titleColor: isLike
                                              ? redColor
                                              : Colors.grey[600],
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
                                              shape:
                                                  const BeveledRectangleBorder(),
                                              context: context,
                                              builder: (context) =>
                                                  const Comment(),
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
                                          onPressedOnIcon: () =>
                                              showModalBottomSheet(
                                            backgroundColor: Colors.grey[300],
                                            elevation: 0,
                                            showDragHandle: true,
                                            context: context,
                                            builder: (context) =>
                                                const ShareDialogToPosts(),
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
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container profileImage(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 5),
        image: const DecorationImage(
          image: AssetImage(icApp),
          fit: BoxFit.contain,
        ),
      ),
      width: context.screenWidth * 0.4,
      height: context.screenHeight * 0.2,
    );
  }

  Container coverPersonaLImage(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        image: const DecorationImage(
          image: AssetImage(icApp),
          fit: BoxFit.cover,
        ),
      ),
      width: context.screenWidth,
      height: context.screenHeight * 0.3,
    );
  }
}
