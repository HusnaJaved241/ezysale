
import 'dart:async';

import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/sign_in.dart';
import 'pages/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomePage1()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF1ab4e6),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
                'assets/splash.jpg',
                height: 200,
                width: 200,
              ),
            
          ],
        ),
      ),
    );
  }
}

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignInPage(),
    );
  }
}
