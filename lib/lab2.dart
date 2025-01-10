import 'package:flutter/material.dart';

void main() => runApp(const Myhom2());

class Myhom2 extends StatelessWidget {
  const Myhom2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResumeScreen(),
    );
  }
}

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text(
          'السيرة الذاتية',
          style: TextStyle(fontFamily: 'Amiri', fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.yellow,
        child: Center(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            color: Colors.pink,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildText('الاسم: عرفات انور الدعيس', bold: true),
                const SizedBox(height: 10),
                buildText('العمر: 22', bold: true),
                const SizedBox(height: 10),
                buildText('الجنسية: يمني', bold: true),
                const SizedBox(height: 10),
                buildText('التخصص: امن سيبراني', bold: true),
                const SizedBox(height: 10),
                buildText('المستوى: الثالث', bold: true),
                const SizedBox(height: 20),
                buildText('الاعمال السابقة: ', bold: true),
                buildList(3),
                const SizedBox(height: 20),
                buildText('المهارات:', bold: true),
                buildList(3),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget to build a line of text
  Widget buildText(String text, {bool bold = false}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
        fontFamily: 'Amiri',
      ),
    );
  }

  // Widget to build numbered list
  Widget buildList(int count) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(count, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Text(
            '${index + 1}- .......',
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontFamily: 'Amiri',
            ),
          ),
        );
      }),
    );
  }
}
