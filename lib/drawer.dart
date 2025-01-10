import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppdrawe());
}

class MyAppdrawe extends StatelessWidget {
  const MyAppdrawe({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WhatsAppDrawer(),
    );
  }
}

class WhatsAppDrawer extends StatelessWidget {
  const WhatsAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp Clone'),
        backgroundColor: Colors.teal,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // الجزء العلوي: صورة واسم المستخدم
            const UserAccountsDrawerHeader(
              accountName: Text("Arafat"),
              accountEmail: Text("+967 711261297"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                  "asset/images/my.jpg",
                ), // صورة شخصية
              ),
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
            ),
            // خيارات التطبيق
            ListTile(
              leading: const Icon(Icons.chat, color: Colors.teal),
              title: const Text("Chats"),
              onTap: () {
                // Action
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt, color: Colors.teal),
              title: const Text("Status"),
              onTap: () {
                // Action
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.call, color: Colors.teal),
              title: const Text("Calls"),
              onTap: () {
                // Action
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.grey),
              title: const Text("Settings"),
              onTap: () {
                // Action
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app, color: Colors.red),
              title: const Text("Logout"),
              onTap: () {
                // Action
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          "Welcome to WhatsApp Clone",
          style: TextStyle(fontSize: 20, color: Colors.teal),
        ),
      ),
    );
  }
}
