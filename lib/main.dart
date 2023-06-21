import 'package:flutter/material.dart';
import 'package:flutter_textfield_example/textField_example.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "TextField Kullanımı",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const TextFieldExample(),
      ),
    );
  }
}
