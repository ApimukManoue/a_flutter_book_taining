import 'package:flutter/material.dart';

class App705 extends StatefulWidget {                   /* สร้าง StatefulWidget สำหรับ App705 */
  const App705({super.key});
  @override
  State<App705> createState() => _App705State();       /* สร้าง State สำหรับ App705*/
}



class _App705State extends State<App705> {            /* สร้าง State สำหรับ App705*/
  var n=0;
   @override
  Widget build(BuildContext context) => Scaffold(
    
    backgroundColor: Colors.transparent,
    body:Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center, 
      children: [
        btnPlus(),                                   /* เรียกใช้เมธอดที่คืนค่ามาเป็น Widget สำหรับ btnPlus และ btnMinus*/
         SizedBox(height: 20),                       /* เพิ่ม SizedBox เพื่อเว้นระยะห่างระหว่างปุ่ม */
        btnMinus(),
        ],
      ),
    ),
  );

  Widget btnPlus() => ElevatedButton(               /* สร้างเมธอดที่คืนค่ามาเป็น Widget สำหรับ btnPlus และ btnMinus*/
    onPressed: () {
      setState(() {
        n++;
      });
    },
    child: Text('$n'),
  );
  Widget btnMinus() => ElevatedButton(
    onPressed: () {
      setState(() {
        n--;
      });
    },
    child: Text('$n'),
  );

}
