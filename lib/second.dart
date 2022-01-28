import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final Tween<double> _scaleTween = Tween<double>(begin: 1, end: 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation'),
      ),
      body: Center(
        child: Center(
          child: TweenAnimationBuilder(
            tween: _scaleTween,
            duration: const Duration(milliseconds: 600),
            builder: (context, double scale, child) {
              return Transform.scale(scale: scale, child: child);
            },
            child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: const Text('Animation')),
          ),
        ),
      ),
    );
  }
}
