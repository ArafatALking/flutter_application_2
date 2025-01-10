import 'package:flutter/material.dart';

void main() {
  runApp(const Myhom());
}

class Myhom extends StatelessWidget {
  const Myhom({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.blue,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(color: Colors.black, width: 5),
                ),
              ),
              Transform.rotate(
                angle: -0.2, // تدوير العنصر بزاوية
                child: Container(
                  width: 120,
                  height: 120,
                  color: Colors.red,
                  alignment: Alignment.center,
                  child: Transform.rotate(
                    angle: 0.1, // تدوير النص قليلاً
                    child: Container(
                      width: 80,
                      height: 80,
                      color: Colors.green,
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "hello",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
