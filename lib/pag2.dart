import 'package:flutter/material.dart';

import 'home.dart';

// ignore: must_be_immutable
class Login extends StatefulWidget {
  Login({super.key, this.data});
  String? data;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String value = "";
  TextEditingController input = TextEditingController();
  //  Login l= Login();
  @override
  Widget build(BuildContext context) {
    value = widget.data!;
    return Scaffold(
      appBar: AppBar(
        title: Text("pag2"),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => MyApp(),
                ),
                (route) => false,
              );
            },
            icon: Icon(Icons.arrow_back_sharp)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: input,
              decoration: InputDecoration(
                  labelText: "Number",
                  hintText: "input number",
                  border: OutlineInputBorder(borderSide: BorderSide(width: 3))),
            ),
          ),
          Text(
            "${input.text}",
            style: TextStyle(fontSize: 33),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {});
            },
            child: Text(
              "change Text",
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.red),
            ),
          )
        ],
      ),
    );
  }
}
