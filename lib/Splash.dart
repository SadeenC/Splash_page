import 'package:flutter/material.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 7000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => MyHomePage(
                  title: 'FUEL APP',
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: 200,
            width: 100,
            color: Colors.red,
          ),
          Container(
            child: Text(
              'FUEL APP',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                // fontFamily: Colors.red,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
