/*
โครงสร้างแอปพลิเคชัน Flutter 
ที่มีหน้าจอหลักเป็น Container 
ที่มีพื้นหลังเป็น Gradient สีฟ้าและสีม่วง 
และภายใน Container นั้นให้แสดง Widget App705() 
*/

import 'package:flutter/material.dart';
import 'app801.dart';
void main() => runApp(const MyApp());                                  /* เขียนแบบ Arrow Function*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(                  /* เขียนแบบ Arrow Function*/
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: App801(),
      ),
    );
}

