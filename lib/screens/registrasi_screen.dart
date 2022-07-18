// ignore_for_file: unused_import, unused_field

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:m_health/screens/login_screen.dart';
import 'package:m_health/screens/verifikasi_screen.dart';
import 'package:m_health/screens/welcome_screen.dart';
import 'package:m_health/widgets/reuseable_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:string_extensions/string_extensions.dart';

class Registrasi extends StatefulWidget {
  const Registrasi({Key? key}) : super(key: key);

  @override
  State<Registrasi> createState() => _RegistrasiState();
}

class _RegistrasiState extends State<Registrasi> {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _passwordTextController2 =
      TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _usernameTextController = TextEditingController();
  final TextEditingController _telponTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kembali"),
        backgroundColor: Colors.red.withOpacity(0.8),
      ),
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
                MediaQuery.of(context).size.height * 0.2),
            child: Column(
              children: <Widget>[
                Text(
                  "Daftar Sebagai Caregiver",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.red.withOpacity(0.8)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 40,
                ),
                reusableTextField("Nama Lengkap", Icons.person, false,
                    _usernameTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(
                    "Email", Icons.mail, false, _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableNumberTextField(
                    "Nomor Handphone", Icons.phone, _telponTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(
                    "Password", Icons.lock, true, _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Konfirmasi Password", Icons.lock, true,
                    _passwordTextController2),
                const SizedBox(
                  height: 20,
                ),
                loginRegisterButton(context, false, () async {
                  if (_passwordTextController.text ==
                      _passwordTextController2.text) {
                    await FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                            email: _emailTextController.text,
                            password: _passwordTextController.text)
                        .then((value) {
                      // Navigator.of(context).pushNamed('/login');
                      FirebaseAuth.instance.currentUser?.updateDisplayName(
                          _usernameTextController.text.toTitleCase);
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return Verifikasi(
                                replaceCharAt(_telponTextController.text, 0, "+62"));
                          },
                          transitionDuration:
                              const Duration(milliseconds: 0),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            final tween = Tween(
                                begin: const Offset(0, 5), end: Offset.zero);
                            return SlideTransition(
                              position: animation.drive(tween),
                              child: child,
                            );
                          }));
                    }).onError((error, stackTrace) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(error.toString()),
                      ));
                    });
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Password tidak sama!"),
                    ));
                  }
                }),
                loginOption(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row loginOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Sudah punya akun?", style: TextStyle(color: Colors.red)),
        GestureDetector(
          onTap: () {
            // Navigator.of(context).pushNamed('/register');
            Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) {
                  return const Login();
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
            " Masuk sebagai Caregiver!",
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  String replaceCharAt(String oldString, int index, String newChar) {
    return oldString.substring(0, index) +
        newChar +
        oldString.substring(index + 1);
  }
}
