import 'package:flutter/material.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => MyListState();
}

class MyListState extends State<MyList> {
  List<String> students = ["Ali", "Ahmed", "MazIan"];
  TextEditingController input = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: input,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 5))),
            ),
          ),
          ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.red)),
              onPressed: () {
                setState(() {});
                if (input.text.isNotEmpty) {
                  students.add(input.text);
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => Dialog(
                      child: Container(
                        height: 50,
                        width: 300,
                        child: const Center(child: Text("data is null")),
                      ),
                    ),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      backgroundColor: Colors.red,
                      dismissDirection: DismissDirection.horizontal,
                      // margin: EdgeInsets.only(bottom: 20),
                      content: Text(
                        "ادخل قيمة لوسمحت",
                        textAlign: TextAlign.center,
                      )));
                }
              },
              child: const Text("add")),
          Expanded(
            child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.all(3),
                      child: ListTile(
                        onTap: () {
                          input.text = students[index];
                        },
                        leading: InkWell(
                          child: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                          onTap: () {
                            setState(() {});
                            students.removeAt(index);
                          },
                        ),
                        trailing: TextButton(
                            onPressed: () {
                              setState(() {});
                              students[index] = input.text;
                              input.clear();
                            },
                            child: const Icon(
                              Icons.update,
                              color: Colors.white,
                            )),
                        tileColor: Colors.teal,
                        contentPadding: const EdgeInsets.all(8),
                        title: Text(
                          students[index],
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )),
          ),
        ],
      ),
    );
  }
}
