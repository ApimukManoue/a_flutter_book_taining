import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context)=>MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black,
            Colors.purple,
            Colors.black
          ],
          begin:Alignment.topCenter,
          end:Alignment.bottomCenter,

        )
      ),
      child:App706()
    ),
  );
}


/* -------------------/

App706: StatefulWidget 

/------------------- */

class App706 extends StatefulWidget{                 
  const App706({super.key});  
  @override
  State<App706> createState() =>_App706State(); 
}

class _App706State extends State<App706>{         

  List<String> buttonItems=["btnPlus","btnMinus"];

  @override
  Widget build(BuildContext context)=>Scaffold(
    backgroundColor: Colors.transparent,
    body:Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width:300,
            height:50,
            color:Colors.white,
            alignment: Alignment.center,
            child:Text("Apimuk")
          ),
         GestureDetector(         
          child: Container(
            margin: EdgeInsets.only(top:20),
            width:300,
            height:50,
            color:Colors.blue,
            alignment: Alignment.center,
            child:Text("Apimuk")
          ),
          onTap: () {
          },
         ),
         GestureDetector(         
          child: Container(
            margin: EdgeInsets.only(top:20),
            width:300,
            height:50,
            color:Colors.blue,
            alignment: Alignment.center,
            child:Text("Apimuk")
          ),
          onTap: () {
          },
         )
        ],
      )
      ),
  );
}