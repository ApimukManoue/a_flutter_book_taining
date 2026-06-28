import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;              // flutter pub add http ต้องเพิ่ม package http ก่อนถึงจะสามารถ import ได้
import 'dart:convert';           // ใช้สำหรับแปลงข้อมูล JSON ที่ได้รับจาก API ให้เป็นรูปแบบที่สามารถใช้งานได้ใน Flutter

class AttractionDetailScreen extends StatefulWidget {
  final int id;                       // ประกาศตัวแปร id เพื่อรับค่า id ของสถานที่ท่องเที่ยวที่ถูกส่งมาจากหน้ารายการสถานที่ท่องเที่ยว
  const AttractionDetailScreen({super.key, required this.id});  // ยัดค่า id 
  @override
  State<StatefulWidget> createState() => _AttractionDetailScreenState();
}




class _AttractionDetailScreenState extends State<AttractionDetailScreen> {

   Map<String, dynamic>? _attractionDetail;        // ประกาศตัวแปร _attractionDetail เพื่อเก็บข้อมูลรายละเอียดของสถานที่ท่องเที่ยวที่ถูกดึงมาจาก API
   
   Future<void> _fetchAttractionDetail() async {         // สรา้งฟังก์ชันเพื่อดึงข้อมูลสถานที่ท่องเที่ยวจาก API
   final response = await http.get(Uri.parse("https://www.melivecode.com/api/attractions/${widget.id}")); // ใช้ widget.id เพื่อเข้าถึงค่า id ที่ถูกส่งมาจากหน้ารายการสถานที่ท่องเที่ยว
    if (response.statusCode == 200) {
      setState(() {
        _attractionDetail = json.decode(response.body);
      });
    } else {
      throw Exception('Failed to load attractions');
    }   
  }

  initState() {          // เรียกใช้ฟังก์ชัน _fetchAttractions เมื่อหน้าจอถูกสร้างขึ้น
    super.initState();
    _fetchAttractionDetail();
  }

  @override
  Widget build(BuildContext context)=> Scaffold(
     appBar: AppBar(
      title: Text("Detail"),
     ),
     body: _attractionDetail == null || _attractionDetail!["attraction"] == null
      ? Center(child: CircularProgressIndicator())
      // : Text(_attractionDetail!["attraction"]['name']), // ใช้เครื่องหมาย ! เพื่อบอกว่า _attractionDetail จะไม่เป็น null ในจุดนี้
      : Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Image.network(_attractionDetail!["attraction"]['coverimage']), // แสดงรูปภาพของสถานที่ท่องเที่ยว
            SizedBox(height: 16),
            Text(
              _attractionDetail!["attraction"]['name'], // แสดงชื่อของสถานที่ท่องเที่ยว
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              _attractionDetail!["attraction"]['detail'], // แสดงคำอธิบายของสถานที่ท่องเที่ยว
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      
  );



   
    
     



}