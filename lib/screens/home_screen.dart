// ignore_for_file: unused_import

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:m_health/screens/pages/dashboard_page.dart';
import 'package:m_health/screens/pages/profile_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  final pages = [
    const Dashboard(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        // backgroundColor: Colors.red.withOpacity(0.8),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.dashboard),
            label: 'Dashboard',
            backgroundColor: Colors.red.withOpacity(0.8),
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.feed),
          //   label: 'Feed',
          // ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.red.withOpacity(0.8),
          ),
        ],
        currentIndex: currentIndex,
        selectedItemColor: Colors.white,
        onTap: (index) => setState(() => currentIndex = index),
      ),
    );
  }

}
