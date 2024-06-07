import 'package:explore_galaxies/home.dart';
import 'package:explore_galaxies/main.dart';
import 'package:flutter/material.dart';

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  List pages = [
    HomePage(),
    OnBoardingPage(),
  ];
    int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: pages[selectedIndex], //0 //1
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor:  Color(0xff171717),
          selectedItemColor: Color(0xff171717),
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Color(0xff171717),
                icon: Image.asset(
                  'assets/icons/home.png',
                  height: 40,
                ),
                label: "HOME"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/category.png',
                  height: 40,
                ), label: "Catgeory"),
            BottomNavigationBarItem(
                icon:Image.asset(
                  'assets/icons/heart.png',
                  height: 40,
                ), label: "favorite"),
            BottomNavigationBarItem(
                icon:Image.asset(
                  'assets/icons/register.png',
                  height: 40,
                ), label: "Login/Register")
          ]),
    );
  }
}