import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List namesOfUser = [
    "yosef",
    "Biniyam",
    "Soliyana",
    "yosef",
    "Biniyam",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Flutter Application"),
          leading: const Icon(
            Icons.menu,
            size: 32,
          ),
          actions: [
            IconButton(
                onPressed: () {
                  print("USER LOGOUT SUCCESSFULLY");
                },
                icon: const Icon(
                  Icons.logout,
                  size: 28,
                ))
          ],
        ),
        body: GridView.builder(
            itemCount: 16,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) => Container(
                  color: Colors.deepPurple,
                  margin: const EdgeInsets.all(2),
                )),
      ),
    );
  }
}
