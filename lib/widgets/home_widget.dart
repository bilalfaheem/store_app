import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/main.dart';
import 'package:store_app/widgets/account_widget.dart';
import 'package:store_app/widgets/cart_widget.dart';
import 'package:store_app/widgets/favorite_widget.dart';
import 'package:store_app/widgets/feed_widget.dart';

class Home_widget extends StatefulWidget {
  const Home_widget({Key? key}) : super(key: key);

  @override
  _Home_widgetState createState() => _Home_widgetState();
}

class _Home_widgetState extends State<Home_widget> {
  int currentIndex = 1;
  final screens = [
    Feed_widget(),
    Cart_widget(),
    Favorite_widget(),
    Account_widget(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(

//Body

      body: screens[currentIndex],

//Bottom Navigation Bar

      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: grey,
          items: const [
            BottomNavigationBarItem(
                icon: FaIcon(
                  Icons.home_sharp,
                  size: 30,
                ),
                label: "home"),
            BottomNavigationBarItem(
                icon: FaIcon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                ),
                label: "cart"),
            BottomNavigationBarItem(
                icon: FaIcon(
                  Icons.favorite_border,
                  size: 30,
                ),
                label: "Favorite"),
            BottomNavigationBarItem(
                icon: FaIcon(Icons.person_outline, size: 30), label: "profile")
          ]));
}
