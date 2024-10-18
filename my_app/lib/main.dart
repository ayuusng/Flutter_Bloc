import 'package:flutter/material.dart';
import 'package:my_app/page/mainhome.dart'; // Mengimpor mainhome.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyRumah(), // Menampilkan MyRumah dari mainhome.dart
    );
  }
}
