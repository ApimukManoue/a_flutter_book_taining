import "package:flutter/material.dart";

class App801 extends StatefulWidget {
  const App801({super.key});

  @override
  State<App801> createState() => _App801State();
}

class _App801State extends State<App801> {
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor:Colors.transparent,
    body:Center(
      child:SafeArea(
        child:Column(
            children:[                /* Ctrl+Tab ขอคำแนะนำโค้ด */
              Container(
                color:Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  'Apimuk Manoue 3910555555555555',     //ระบุ อักษร
                  textScaler:TextScaler.linear(1.8 ),   //ตัวคูณขนาดฟอนต์
                  maxLines: 1,                          //จำนวนบรรทัดสูงสุด
                  overflow:TextOverflow.ellipsis,       //การตัดคำที่เกินบรรทัดให้เป็น ...   
                  style:TextStyle(                      //style
                    color:Colors.blue,
                    fontFamily: "Tahoma",
                    fontWeight: FontWeight.bold,
                    fontStyle:FontStyle.italic

                  )         
                ),
              ), 
                           /* Ctrl+Tab ขอคำแนะนำ */
            ]
          )
      )
    ),
  );
}
