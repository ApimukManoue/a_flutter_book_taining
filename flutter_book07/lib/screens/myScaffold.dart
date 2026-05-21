import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.transparent,   //สีพื้นโปร่งใส
    body:SafeArea(child: Column(
      children: [
        Container(height: 200, color: Colors.amber),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 200,
              width: 100,
              color: Colors.white,
              alignment: Alignment.center,
              child: Text('AM'),
            ),
            Container(
              height: 200,
              width: 100,
              color: Colors.greenAccent,
              alignment: Alignment.center,
              child: Text('AM'),
            ),
            Container(
              height: 200,
              width: 100,
              alignment: Alignment.center,
              color: Colors.red,
              child: Text('AM'),
            ),
          ],
        ),
        SizedBox(height: 50),
        lastContainner(),             //เรียกใช้ฟังค์ชั่น lastContainner  
      ],
    ),
    ),
  );
}

Widget lastContainner() => Container( //สร้างฟังค์ชั่น lastContainner ที่คืนค่าเป็น Widget
  alignment: Alignment.center,
  height: 200,
  color: Colors.red,
  child: Text('Manoue'),
);

