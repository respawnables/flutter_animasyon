import 'dart:async';
import 'package:animasyon_odev/pages/info.dart';
import 'package:animasyon_odev/routes/fadeInFadeOutRoute.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  Splash({Key key}) : super(key: key);

  _State createState() => _State();
}

class _State extends State<Splash> {
  Duration duration = const Duration(seconds: 3);

  startTimeout() {
    return new Timer(duration, handleTimeout);
  }

  void handleTimeout() {
    Navigator.pop(context);
    Navigator.push(context, FadeInFadeOutRoute(builder: (context) => Info()));
  }

  @override
  void initState() {
    super.initState();
    this.startTimeout();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/splash_bg.png"),
                fit: BoxFit.cover)),
        child: Center(
          child: Text(
            'Splash',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
