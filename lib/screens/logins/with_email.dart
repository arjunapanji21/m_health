import 'package:flutter/material.dart';
import 'package:m_health/screens/home_screen.dart';
import 'package:m_health/screens/registrasi_screen.dart';
import 'package:m_health/widgets/reuseable_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';

class WithEmail extends StatefulWidget {
  const WithEmail({Key? key}) : super(key: key);

  @override
  State<WithEmail> createState() => _WithEmailState();
}

class _WithEmailState extends State<WithEmail> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // FirebaseAuth.instance.authStateChanges().listen((User? user) {
    //   if (user!.phoneNumber != null) {
    //     Navigator.of(context).push(
    //       PageRouteBuilder(
    //           pageBuilder: (context, animation, secondaryAnimation) {
    //         return const Home();
    //       }, transitionDuration: const Duration(milliseconds: 0),
    //       transitionsBuilder:
    //               (context, animation, secondaryAnimation, child) {
    //         final tween =
    //             Tween(begin: const Offset(5, 0), end: Offset.zero);
    //         return SlideTransition(
    //           position: animation.drive(tween),
    //           child: child,
    //         );
    //       }),
    //     );
    //   }
    // });
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login dengan Email"),
        backgroundColor: Colors.red.withOpacity(0.8),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            color: Colors.white),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.1, 20, MediaQuery.of(context).size.height * 0.1),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/loginscreen.jpg"),
                Text("Selamat Datang \n di aplikasi M-Health", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red.withOpacity(0.8)), textAlign: TextAlign.center,),
                const SizedBox(
                  height: 20,
                ),
                Text("Silahkan masukkan email dan password anda", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.4)), textAlign: TextAlign.center,),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Email", Icons.mail_outline, false, _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Password", Icons.lock_outline, true, _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                loginRegisterButton(context, true, () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _emailTextController
                              .text,
                          password: _passwordTextController.text)
                      .then((value) {
                    Navigator.of(context).push(
                        PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) {
                          return const Home();
                        }, transitionDuration: const Duration(milliseconds: 0),
                        transitionsBuilder:
                                (context, animation, secondaryAnimation, child) {
                          final tween =
                              Tween(begin: const Offset(0, 5), end: Offset.zero);
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
                }),
                // registOption(),
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
        const Text("Belum punya akun?",
            style: TextStyle(color: Colors.red)),
        GestureDetector(
          onTap: () {
            // Navigator.of(context).pushNamed('/register');
            Navigator.of(context).push(
              PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                return const Registrasi();
              }, transitionDuration: const Duration(milliseconds: 0),
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
