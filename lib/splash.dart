import 'package:flutter/material.dart';

import 'onBoarding.dart';


class Splash extends StatelessWidget {
  const Splash({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, '/login');
    });
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF5927FE),Color(0xFF8160EF)],
              begin: Alignment.topRight,
              end: Alignment.topLeft,
            )
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(70),
                      right: Radius.circular(70)
                  )
              ),
              child: Image(image: AssetImage('images/img.png'),width: 200),
            ),
          ],
        ),
      ),
    );
  }
}
