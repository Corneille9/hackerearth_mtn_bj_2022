import 'package:flutter/material.dart';
import 'package:hackerearth_mtn_bj_2022/Views/accueil.dart';
import 'package:hackerearth_mtn_bj_2022/Views/historique.dart';
import 'package:hackerearth_mtn_bj_2022/colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static String name = "/home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List screens = [
    const Accueil(),
    const Historique()
  ];

  int _currentIdex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIdex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        selectedItemColor: AppColor.primaryColor,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIdex,
        onTap: (value) {
          setState(() {
            _currentIdex = value;
          });
        },
        items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home) , label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.history_edu) ,label: ''),
        ],
      ),
    );
  }
}