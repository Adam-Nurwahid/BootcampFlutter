import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopeasy/page/explore_screen.dart';
import 'package:shopeasy/page/home_screen.dart';
import 'package:shopeasy/page/profile_Screen.dart';
import 'package:shopeasy/page/wishlist_screen.dart';

import 'controller/botttom_nav_controller.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavController bottomNavController = Get.put(BottomNavController());

    final List<Widget> pages = [
      HomeScreen(),
      ExploreScreen(),
      SizedBox.shrink(),
      WishlistScreen(),
      ProfileScreen(),

    ];

    return Obx(() => Scaffold(
      body: pages[bottomNavController.selectedIndex.value],
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.fixedCircle,
        backgroundColor: Colors.blue,
        color: Colors.white,
        activeColor: Colors.white,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.search, title: 'Search'),
          TabItem(icon: Icons.add, title: 'Add'), // Tombol tengah
          TabItem(icon: Icons.favorite, title: 'Wishlist'),
          TabItem(icon: Icons.person, title: 'Profile'),
        ],
        initialActiveIndex: bottomNavController.selectedIndex.value,
        onTap: (int index) {
          bottomNavController.changeTab(index);
        },
      ),
    ));
  }
}
