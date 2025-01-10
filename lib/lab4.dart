import 'package:flutter/material.dart';

void main() {
  runApp(const Myhom4());
}

class Myhom4 extends StatelessWidget {
  const Myhom4({super.key});

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
      appBar: AppBar(
        title: const Text('arafat title'),
        backgroundColor: const Color.fromARGB(255, 226, 87, 77),
        actions: [
          IconButton(
            icon: const Icon(Icons.directions_bike),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.directions_bus),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.emoji_emotions),
          onPressed: () {},
        ),
      ),
      body: const Center(
        child: Text(
          'Hello',
          style: TextStyle(fontSize: 24, color: Colors.cyan),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 6, 6, 6),
    );
  }
}
