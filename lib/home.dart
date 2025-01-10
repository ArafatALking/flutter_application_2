import 'package:flutter/material.dart';
import 'package:flutter_application_2/myDrawer.dart';

// ignore: unused_import
import 'pag2.dart';

Color c = const Color.fromARGB(255, 17, 14, 14);
Text text = Text(
  textAlign: TextAlign.center,
  "hello flutter",
  textDirection: TextDirection.rtl,
  style: TextStyle(
    color: c,
  ),
);

Image im = Image.asset("asset/images/80.png");
SizedBox sbw = const SizedBox(
  width: 10,
);
SizedBox sbh = const SizedBox(
  height: 10,
);
void click() {
  print("object");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Mydrawer(),
      appBar: AppBar(
        centerTitle: true,
        // leading: Icon(
        //   Icons.share,
        //   color: Colors.white,
        // ),
        actions: [
          IconButton(
              onPressed: () {
                print("without Name");
              },
              icon: const Icon(
                Icons.camera,
                color: Colors.white,
              )),
          sbw,
          IconButton(
              onPressed: () => print("Lamad"),
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
          sbw,
          const IconButton(
              onPressed: click,
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              )),
          sbw
        ],
        backgroundColor: c,
        title: const Text(
          "Lab 1",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.end,
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 181, 229, 203),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                          topLeft: Radius.circular(40))),
                  width: 100,
                  height: 100,
                  child: im,
                ),
                sbh,
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 181, 229, 203),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                          topLeft: Radius.circular(40))),
                  width: 100,
                  height: 100,
                  child: im,
                ),
                sbh,
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 181, 229, 203),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                          topLeft: Radius.circular(40))),
                  width: 100,
                  height: 100,
                  child: im,
                ),
                sbh,
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 181, 229, 203),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                          topLeft: Radius.circular(40))),
                  width: 100,
                  height: 100,
                  child: im,
                ),
                sbh,
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 181, 229, 203),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                          topLeft: Radius.circular(40))),
                  width: 100,
                  height: 100,
                  child: im,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: text,
    );
  }
}
