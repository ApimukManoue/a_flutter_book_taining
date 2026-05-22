import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.transparent,   //สีพื้นโปร่งใส
    body:SafeArea(child: Column(
      children: [
        Container(height: 100, color: Colors.amber),
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
        SizedBox(height: 20),
        lastContainner(),             //เรียกใช้ฟังค์ชั่น lastContainner  
        SizedBox(height: 20),
        lastContainner01(),             //เรียกใช้ฟังค์ชั่น lastContainner  
      ],
    ),
    ),
  );
}

Widget lastContainner() => Container( //สร้างฟังค์ชั่น lastContainner ที่คืนค่าเป็น Widget
  alignment: Alignment.center,
  height: 200,
  color: Colors.red,
  padding: EdgeInsets.all(20),
  child: Text(
    'Apimuk Manoue AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA',
    textScaler: TextScaler.linear(2.0),
    maxLines: 1,                              //กำหนดให้ข้อความแสดงแค่บรรทัดเดียว
    overflow: TextOverflow.ellipsis,          //ถ้าเกินจะมี ... แสดงแทน
    style: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      fontFamily: 'Tahoma',
    ),
  ),
);

Widget lastContainner01() => Container( //สร้างฟังค์ชั่น lastContainner01 ที่คืนค่าเป็น Widget
  alignment: Alignment.center,
  height: 200,
  color: Colors.greenAccent,
  padding: EdgeInsets.all(20),
  child: Placeholder(
    color: Colors.white,
    strokeWidth: 4,
    fallbackHeight: 100,
    fallbackWidth: 200,
  ),
);
