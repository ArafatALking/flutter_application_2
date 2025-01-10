import 'package:flutter/material.dart';
import 'package:flutter_application_2/lab8.dart';
import 'lab1.dart';
import 'lab2.dart';
import 'lab3.dart';
import 'lab4.dart';
import 'home.dart';
import 'drawer.dart';
// ignore: unused_import
import 'pag2.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 230, 228, 228),
      child: ListView(
        children: [
          Container(
              child: DrawerHeader(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 236, 235, 234)),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                          "asset/images/my.jpg",
                        ),
                      ),
                      sbh,
                      const Text("Aaaaaa.com")
                    ],
                  ))),
          menu(context, "lab1", const Icon(Icons.home), const MyApp()),
          menu(context, "lab3", const Icon(Icons.login), const MyList()),
          menu(context, "homwrk1", const Icon(Icons.login), const Myhom2()),
          menu(context, "homwrk2", const Icon(Icons.login), const Myhom()),
          menu(context, "homwrk3", const Icon(Icons.login), const Myhom3()),
          menu(context, "homwrk4", const Icon(Icons.login), const Myhom4()),
          menu(context, "drawer", const Icon(Icons.login), const MyAppdrawe()),
        ],
      ),
    );
  }

  ListTile menu(BuildContext context, String title, Icon icon, Page) {
    return ListTile(
      leading: icon,
      trailing: const Icon(Icons.arrow_forward_ios),
      tileColor: const Color.fromARGB(255, 13, 11, 11),
      title: Text(title),
      textColor: Colors.white,
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Page,
            ));
      },
    );
  }
}
