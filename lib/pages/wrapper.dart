import 'package:flutter/material.dart';
import 'package:novah/pages/home_page.dart';
import 'package:novah/pages/insights.dart';
import 'package:novah/pages/messages.dart';
import 'package:novah/pages/secrets_page.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int current = 0;
  void changePage(int index) {
    setState(() {
      current = index;
    });
  }

  List pages = [
    HomePage(),
    Insights(),
    MessagesPage(),
    SecretsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.route_outlined), label: 'Track'),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_outlined), label: 'Anonymous'),
            BottomNavigationBarItem(
                icon: Icon(Icons.groups_sharp), label: 'Doctor'),
          ],
          currentIndex: current,
          onTap: changePage,
          selectedItemColor: Colors.pink.shade200,
          unselectedItemColor: Colors.black87,
          showUnselectedLabels: false,
          backgroundColor: Colors.white70,
        ),
      ),
      body: pages[current],
    );
  }
}
