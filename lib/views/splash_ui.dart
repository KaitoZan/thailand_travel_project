// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:thailand_travel_project/views/introduction_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    // หน่วง 3 วิ

    Future.delayed(
        Duration(
          seconds: 3,
        ),
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => IntroductionUI(),
              ),
            ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/Bg.jpg',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
              ),
              CircularProgressIndicator(
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
