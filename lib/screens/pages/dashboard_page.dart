// ignore_for_file: unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:m_health/screens/modules/modul1.dart';
import 'package:m_health/screens/modules/modul2.dart';
import 'package:m_health/screens/modules/modul3.dart';
import 'package:m_health/screens/modules/modul4.dart';
import 'package:m_health/screens/modules/modul5.dart';
import 'package:m_health/screens/modules/modul6.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; // get device screen resolution
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: const BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage("assets/images/loginscreen.png")),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 30),
                  Text("Welcome,\n${auth.currentUser?.displayName}",
                      style: const TextStyle(
                          fontSize: 28, fontWeight: FontWeight.w900)),
                  const SizedBox(height: 240),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .90,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "1.\nManajemen Perawatan Luka Di Rumah",
                          img: "assets/images/modul1.png",
                          press: () {
                            Navigator.of(context).push(
                              PageRouteBuilder(
                                  pageBuilder: (context, animation, secondaryAnimation) {
                                return const Modul1();
                              }, transitionDuration: const Duration(milliseconds: 0),
                              transitionsBuilder:
                                      (context, animation, secondaryAnimation, child) {
                                final tween =
                                    Tween(begin: const Offset(5, 0), end: Offset.zero);
                                return SlideTransition(
                                  position: animation.drive(tween),
                                  child: child,
                                );
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "2.\nManajemen Pemberian Nutrisi",
                          img: "assets/images/modul2.png",
                          press: () {
                            Navigator.of(context).push(
                              PageRouteBuilder(
                                  pageBuilder: (context, animation, secondaryAnimation) {
                                return const Modul2();
                              }, transitionDuration: const Duration(milliseconds: 0),
                              transitionsBuilder:
                                      (context, animation, secondaryAnimation, child) {
                                final tween =
                                    Tween(begin: const Offset(5, 0), end: Offset.zero);
                                return SlideTransition(
                                  position: animation.drive(tween),
                                  child: child,
                                );
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "3.\nManajemen Stres",
                          img: "assets/images/modul3.png",
                          press: () {
                            Navigator.of(context).push(
                              PageRouteBuilder(
                                  pageBuilder: (context, animation, secondaryAnimation) {
                                return const Modul3();
                              }, transitionDuration: const Duration(milliseconds: 0),
                              transitionsBuilder:
                                      (context, animation, secondaryAnimation, child) {
                                final tween =
                                    Tween(begin: const Offset(5, 0), end: Offset.zero);
                                return SlideTransition(
                                  position: animation.drive(tween),
                                  child: child,
                                );
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "4.\nMengenal Tanda-tanda Gawat Darurat",
                          img: "assets/images/modul4.png",
                          press: () {
                            Navigator.of(context).push(
                              PageRouteBuilder(
                                  pageBuilder: (context, animation, secondaryAnimation) {
                                return const Modul4();
                              }, transitionDuration: const Duration(milliseconds: 0),
                              transitionsBuilder:
                                      (context, animation, secondaryAnimation, child) {
                                final tween =
                                    Tween(begin: const Offset(5, 0), end: Offset.zero);
                                return SlideTransition(
                                  position: animation.drive(tween),
                                  child: child,
                                );
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "5.\nMengenal Tanda-tanda Infeksi",
                          img: "assets/images/modul5.png",
                          press: () {
                            Navigator.of(context).push(
                              PageRouteBuilder(
                                  pageBuilder: (context, animation, secondaryAnimation) {
                                return const Modul5();
                              }, transitionDuration: const Duration(milliseconds: 0),
                              transitionsBuilder:
                                      (context, animation, secondaryAnimation, child) {
                                final tween =
                                    Tween(begin: const Offset(5, 0), end: Offset.zero);
                                return SlideTransition(
                                  position: animation.drive(tween),
                                  child: child,
                                );
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "6.\nMengatur Jadwal Perawatan Pasien",
                          img: "assets/images/modul6.png",
                          press: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Modul6()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String img;
  final String title;
  final VoidCallback press;
  const CategoryCard({
    Key? key,
    required this.title,
    required this.img,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red.withOpacity(0.8),
            borderRadius: BorderRadius.circular(20),
            // boxShadow: const [
            //   BoxShadow(
            //     offset: Offset(0, 17),
            //     blurRadius: 17,
            //     spreadRadius: -23,
            //   ),
            // ]
            ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage(img),
                  height: 100,
                ),
                Text(title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
