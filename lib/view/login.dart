import 'package:page_transition/page_transition.dart';
import 'package:portfolio/Animations/animate.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/view/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(1, 8, 24, 1),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeAnimation(1.2, const Text("Let's sign you in.", 
            style:  TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)),
            const SizedBox(height: 30,),
            FadeAnimation(1.5, Container(
              padding: const EdgeInsets.all(0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xAA1A1B1E),
                border: Border.all(color: const Color(0xFF373A3F))
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                    decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Color(0xFF373A3F)))
                    ),
                    child: const TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
                        hintText: "Email or Phone number"
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                    child: TextField(
                      obscureText: !isPasswordVisible,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: const TextStyle(color: Color(0xFFFFFFFF)),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                          child: const Icon(Icons.remove_red_eye, color: Color(0xFF5C5F65),)),
                        hintText: "Password"
                      ),
                    ),
                  ),
                ],
              ),
            )),
            const SizedBox(height: 40,),
            FadeAnimation(1.8, Center(
              child: MaterialButton(
                onPressed: () {
                   Navigator.pushAndRemoveUntil(context, PageTransition(type: PageTransitionType.fade, child: const HomePage()), (route) => false);
                },
                color: const Color(0xAA3A5BDA),
                padding: const EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
                child: const Center(child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 16),)),
              ),
            )),
          ],
        ),
      ),
    );
  }
}