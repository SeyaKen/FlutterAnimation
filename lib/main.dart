import 'package:flutter/material.dart';
import 'package:flutteranimation/second.dart';

void main() {
  runApp(const MyApp());
}

// 動画のタイトルFlutter Animation in 5 Minutes

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SecondScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _width = 100;
  double _height = 100;

  double _updateState() {
    setState(() {
      _width = 300;
      _height = 300;
    });
    return 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _updateState();
              },
              child: const Text('button'),
            ),
            AnimatedContainer(
              curve: Curves.bounceOut,
              duration: const Duration(milliseconds: 400),
              width: _width,
              height: _height,
              color: Colors.blue,
              child: const Text('Animation'),
            )
          ],
        ),
      ),
    );
  }
}
