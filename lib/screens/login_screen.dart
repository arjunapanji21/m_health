import 'dart:async';

import 'package:flutter/material.dart';
import 'package:m_health/screens/home_screen.dart';
import 'package:m_health/screens/logins/with_email.dart';
import 'package:m_health/screens/logins/with_phone.dart';
import 'package:m_health/screens/registrasi_screen.dart';
import 'package:m_health/widgets/reuseable_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late StreamSubscription<User?> user;
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();

  void initState() {
    super.initState();
    user = FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user != null) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Home()));
      }
    });
  }

  @override
  void dispose() {
    user.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // FirebaseAuth.instance.authStateChanges().listen((User? user) {
    //   if (user!.phoneNumber != null) {
    //     Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Home()),
    //     );
    //   }
    // });
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20,
                MediaQuery.of(context).size.height * 0.1,
                20,
                MediaQuery.of(context).size.height * 0.1),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/loginscreen.jpg"),
                Text(
                  "Selamat Datang \n di aplikasi M-Health",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.red.withOpacity(0.8)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Silahkan masuk dengan",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.4)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                menuButton(context, "Nomor HP", () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return const WithPhone();
                      },
                      transitionDuration: const Duration(milliseconds: 0),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        final tween =
                            Tween(begin: const Offset(0, 5), end: Offset.zero);
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      }));
                }),
                menuButton(context, "Email", () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return const WithEmail();
                      },
                      transitionDuration: const Duration(milliseconds: 0),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        final tween =
                            Tween(begin: const Offset(0, 5), end: Offset.zero);
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      }));
                }),
                const SizedBox(
                  height: 20,
                ),
                registOption(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row registOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Belum punya akun?", style: TextStyle(color: Colors.red)),
        GestureDetector(
          onTap: () {
            // Navigator.of(context).pushNamed('/register');
            Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) {
                  return const Registrasi();
                },
                transitionDuration: const Duration(milliseconds: 0),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  final tween =
                      Tween(begin: const Offset(0, 5), end: Offset.zero);
                  return SlideTransition(
                    position: animation.drive(tween),
                    child: child,
                  );
                }));
          },
          child: const Text(
            " Daftar sebagai Caregiver!",
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
