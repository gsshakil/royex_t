import 'package:flutter/material.dart';
import 'package:royex_task/core/constants/colors.dart';
import 'package:royex_task/core/utility/product_tab_utility.dart';
import 'package:royex_task/presentation/screens/cart_screen.dart';
import 'package:royex_task/presentation/screens/category_screen.dart';
import 'package:royex_task/presentation/screens/home_screen.dart';
import 'package:royex_task/presentation/screens/profile_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const screens = [
      HomeScreen(),
      CategoryScreen(),
      ProfileScreen(),
      CartScreen(),
    ];

    return ValueListenableBuilder(
        valueListenable: BottomNavUtility.index,
        builder: (context, value, child) {
          return Scaffold(
            body: IndexedStack(
              index: BottomNavUtility.index.value,
              children: screens,
            ),
            bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                selectedItemColor: kRedColor,
                unselectedItemColor: kGreyColor,
                selectedFontSize: 12,
                currentIndex: BottomNavUtility.index.value,
                onTap: (value) {
                  BottomNavUtility.index.value = value;
                },
                items: const [
                  BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.category), label: ''),
                  BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_bag), label: ''),
                ]),
          );
        });
  }
}
