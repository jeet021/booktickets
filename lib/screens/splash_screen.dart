import 'dart:async';

import 'package:booktickets/screens/authentication_screen.dart';
import 'package:booktickets/utilis/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AuthenticationScreen()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(child: Image.asset('assets/images/img_1.png',height: 200,width: 200,)),
      ),
    );
  }
}
