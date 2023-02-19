import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istakip/helpers/tema.dart';
import '../../helpers/ext.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Tema tema = Tema();
  bool password_seen = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Renk(backgroundColor),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 180,
                  height: 180,
                  margin: EdgeInsets.only(top: 50),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                        color: Colors.white.withOpacity(0.2), width: 1),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Renk("2D2F3A"),
                        width: 15,
                      ),
                    ),
                    child: const Icon(
                      Icons.login,
                      size: 45,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Giriş Yapın",
                    style: GoogleFonts.quicksand(
                        color: Colors.white, fontSize: 30),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Renk("333443"),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: const EdgeInsets.only(
                      top: 10, bottom: 0, right: 30, left: 30),
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 5, bottom: 5),
                  child: TextFormField(
                    decoration: tema.inputDec("E-posta adresinizi giriniz",
                        Icons.people_alt_outlined),
                    style: GoogleFonts.quicksand(color: Renk(textColor)),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Renk("333443"),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: const EdgeInsets.all(30),
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 5, bottom: 5),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          obscureText: password_seen,
                          decoration: tema.inputDec(
                              "Şifrenizi giriniz", Icons.password_outlined),
                          style: GoogleFonts.quicksand(color: Renk(textColor)),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              password_seen = !password_seen;
                            });
                          },
                          icon: Icon(
                            password_seen ? Icons.remove_red_eye : Icons.close,
                            color: Renk("5BA7FB"),
                          ))
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    print("object");
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Renk("224ABE"), Renk("4E73DF")]),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Renk("2D2F3A"),
                            offset: Offset(0, 4),
                            blurRadius: 5,
                          )
                        ]),
                    child: Center(
                      child: Text(
                        "GİRİŞ YAP",
                        style: GoogleFonts.quicksand(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
