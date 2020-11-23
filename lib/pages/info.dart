import 'file:///C:/Users/Batuhan/AndroidStudioProjects/animasyon_odev/lib/widgets/animated/loader.dart';
import 'file:///C:/Users/Batuhan/AndroidStudioProjects/animasyon_odev/lib/widgets/animated/ripple.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/info_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Ripple(300,
                child: Text('Info',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white))),
              SizedBox(height: 150),
              Loader(),
            ],
          ),
        ),
      ),
    );
  }
}
