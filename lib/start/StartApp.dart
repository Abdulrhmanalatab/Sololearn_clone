import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math' as math;
import 'HomeSign.dart';

class start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sololearn',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();

    Timer(Duration(seconds: 5), () {
      Navigator.of(context)
          ?.pushReplacement(MaterialPageRoute(builder: (_) => Homesign()));
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0d1126),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedBuilder(
              animation: _controller,
              child: Image.asset(
                'fff/st.jpg',
                width: 100,
                height: 100,
              ),
              builder: (BuildContext context, Widget? child) {
                return child != null
                    ? Transform.rotate(
                        angle: _controller.value * 2.0 * math.pi,
                        child: child,
                      )
                    : Container(); // or any other widget you want to display when child is null
              },
            ), // Closed the AnimatedBuilder widget
            SizedBox(height: 20),
            Text(
              'sololearn',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
