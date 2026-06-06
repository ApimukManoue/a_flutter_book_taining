import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AttractionScreen extends StatefulWidget {
  const AttractionScreen({super.key});

  @override
  State<StatefulWidget> createState() => _AttractionScreenState();
}

class _AttractionScreenState extends State<AttractionScreen> {

  List<dynamic> _attractions = [];                   // สร้างตัวแปรเพื่อเก็บข้อมูลสถานที่ท่องเที่ยว หากตัวแปรยังม่ถูภเรียกใช้ในฟังค์ชั่น build จะทำให้เกิด error เนื่องจากยังไม่มีข้อมูลสถานที่ท่องเที่ยวถูกเก็บไว้ในตัวแปรนี้

  Future<void> _fetchAttractions() async {         // สรา้งฟังก์ชันเพื่อดึงข้อมูลสถานที่ท่องเที่ยวจาก API
   final response = await http.get(Uri.parse("https://www.melivecode.com/api/attractions")); 
    if (response.statusCode == 200) {
      setState(() {
        _attractions = json.decode(response.body);
      });
    } else {
      throw Exception('Failed to load attractions');
    }
  }

  @override
  void initState() {          // เรียกใช้ฟังก์ชัน _fetchAttractions เมื่อหน้าจอถูกสร้างขึ้น
    super.initState();
    _fetchAttractions();
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(    
      body: SafeArea(
        child: ListView.builder(
          itemCount: _attractions.length,
          itemBuilder:(context,index){
            final attraction = _attractions[index];   // ต้องประกาศนอก ListTile
            return ListTile(
              leading:  Container(
                width: MediaQuery.of(context).size.width * 0.2, // กำหนดความกว้างขอContainerเป็น 20% ของความกว้างหน้าจอ
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),), // กำหนดให้ขอบของ Container มีความโค้งมนด้วย BorderRadius          ),
                clipBehavior: Clip.antiAlias, // กำหนดให้รูปภาพถูกตัดขอบตามที่กำหนดไว้ใน BoxDecoration
                child: Image.network(
                  fit: BoxFit.cover, // กำหนดให้รูปภาพเต็มพื้นที่ที่กำหนดไว้
                  attraction['coverimage']
                  )
                ),
              title: Text(attraction['name']),           
            );
          },

        ),
      ),
    );
  }
}