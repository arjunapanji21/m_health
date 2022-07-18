// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:m_health/screens/pages/senin_page.dart';
import 'package:m_health/screens/pages/selasa_page.dart';

class Modul6 extends StatefulWidget {
  const Modul6({Key? key}) : super(key: key);

  @override
  State<Modul6> createState() => _Modul6State();
}

class _Modul6State extends State<Modul6> {
  int currentIndex = 0;
  final pages = [
    const Senin(),
    const Selasa(),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.dashboard),
            label: 'Senin',
            backgroundColor: Colors.red.withOpacity(0.8),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: 'Selasa',
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
