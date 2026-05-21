/*โครงสร้างหลักแบบแยก Scaffold ไปหน้าอื่นแต่ละหน้า */
import 'package:flutter/material.dart';
import './screens/myScaffold.dart';

void main(List<String> args) =>  runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false, //ปิดแถบ DEBUG
    home:Container(                    //ใส่ Container แล้วตกแต่ง
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin:Alignment.topLeft,
          end:Alignment.bottomRight,
          colors: [
          Color.fromARGB(255,7, 7, 247),
          Colors.white,
        ]),
      ),
      child: MyScaffold(             //import myScaffold.dart แล้วเรีกคลาสมาใช้
      ),
    ),
  );

}
