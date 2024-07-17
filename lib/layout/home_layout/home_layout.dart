import 'package:alashira/layout/friend_request_layout/friend_request_screen.dart';
import 'package:alashira/layout/messenger_layout/messenger_screen.dart';
import 'package:alashira/layout/notifications_layout/notifications_screen.dart';
import 'package:alashira/layout/search_layout/search_layout.dart';
import 'package:alashira/screens/home_screen/home_screen.dart';
import 'package:alashira/screens/menu_screen/menu_screen.dart';
import 'package:alashira/screens/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;

  List<Widget> screens = [
    const HomeScreen(),
    const ProfileScreen(),
    const MenuScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'عشيرة'.text.bold.size(25).fontFamily('Ruwudu').make(),
        actions: [
          IconButton(
            onPressed: () => Get.to(() => const SearchLayout()),
            icon: Image.asset(
              'assets/icons/search.png',
              scale: 22,
              color: Colors.orange[500],
            ),
          ),
          IconButton(
            onPressed: () => Get.to(() => const NotificationsScreen()),
            icon: Icon(Icons.notifications, color: Colors.red[500]),
          ),
          IconButton(
            onPressed: () => Get.to(() => const MessengerScreen()),
            icon: Icon(Icons.message, color: Colors.green[500]),
          ),
          IconButton(
            onPressed: () => Get.to(() => const FriendRequestScreen()),
            icon: Icon(Icons.group, color: Colors.blue[500]),
          ),
        ],
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        elevation: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[500],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'menu',
          ),
        ],
      ),
    );
  }
}
