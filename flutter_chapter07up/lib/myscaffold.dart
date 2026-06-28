import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget{
  const MyScaffold({super.key});
  
  @override
  Widget build(BuildContext context)=>Scaffold(

    appBar: AppBar(
      title:const Text("Apimuk"),
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      centerTitle: true,
    ),

    body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 200,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.blue,
            ),
           
          ],
        ),
      ),

    drawer: Drawer(
      backgroundColor: Colors.red,
      width: 200,
      child:Center(
        child:Text('data'),
        ),
    ),

    bottomNavigationBar: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home'),     //ต้องมีไม่ต่ำกว่า 2 ปุ่ม
        BottomNavigationBarItem(icon: Icon(Icons.search),label:'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label:'Profile'),

      ],
    ),

     
  );

}