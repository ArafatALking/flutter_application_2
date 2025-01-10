import 'package:flutter/material.dart';

void main() {
  runApp(const Myhom3());
}

class Myhom3 extends StatelessWidget {
  const Myhom3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container'),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              icon: const Icon(Icons.info),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // مربع مستطيل عادي
              Container(
                color: Colors.blue,
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                child: const Center(
                  child: Text(
                    "I am container",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              // مربع مائل مع النص
              Transform.rotate(
                angle: 0.2, // تدوير المربع بزاوية
                child: Container(
                  width: 900,
                  color: Colors.blue,
                  margin: const EdgeInsets.all(50),
                  padding: const EdgeInsets.all(16),
                  child: const Center(
                    child: Text(
                      "Hai, I am Slanting",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              // مربع مائل آخر مع حدود ناعمة
              Transform.rotate(
                angle: 0.2,
                child: Container(
                  color: Colors.blue,
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.all(16),
                  child: const Center(
                    child: Text(
                      "I am also Slanting, but see my edges",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
              // المربعات المتداخلة
              Container(
                color: Colors.blue,
                width: 200,
                height: 200,
                child: Center(
                  child: Container(
                    color: Colors.yellow,
                    width: 150,
                    height: 150,
                    child: Center(
                      child: Container(
                        color: Colors.green,
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Container(
                            color: Colors.red,
                            width: 50,
                            height: 50,
                          ),
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
