import 'package:flutter/material.dart';
import 'package:hb_project1/Bottom_Nav_Widget.dart';
import 'package:hb_project1/mainpage.dart';
import 'package:hb_project1/screens/cart_page.dart';
import 'package:hb_project1/screens/screen_search.dart';
import 'package:hb_project1/screens/user_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  final _pages = [
    MainPage(),
    screenSearch(),
    CartPage(),
    userPage(),
  ];
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Scaffold(
          body: ValueListenableBuilder(
              valueListenable: indexChangeNotifier,
              builder: ((context, int value, _) {
                return _pages[value];
              })),
          bottomNavigationBar: BottomWidget(),
        ),
      ),
    );
  }
}
