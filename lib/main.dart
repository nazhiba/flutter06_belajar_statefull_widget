import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void tekantombol() {
    setState(() {
    number = number + 1;
    });
  }
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Statefull widget demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(number.toString(),style: TextStyle(fontSize: 10 + number.toDouble()),),
              ElevatedButton(
                  child: Text("Tambah Bilangan"), onPressed: tekantombol)
            ],
          ),
        ),
      ),
    );
  }
}
