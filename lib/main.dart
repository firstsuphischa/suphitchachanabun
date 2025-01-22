import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/showproductgrid.dart';
import 'addproduct.dart';
import 'showproduct.dart';
import 'showproducttype.dart';

// Method to initialize Firebase and run the app
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyASBrvE_HS9ULPDQFu4KT40f_Eak5uph8k",
        authDomain: "onlinefirebase-8ef1a.firebaseapp.com",
        databaseURL: "https://onlinefirebase-8ef1a-default-rtdb.firebaseio.com",
        projectId: "onlinefirebase-8ef1a",
        storageBucket: "onlinefirebase-8ef1a.firebasestorage.app",
        messagingSenderId: "367290518650",
        appId: "1:367290518650:web:28c996b4fc51a07315bfc3",
        measurementId: "G-JT3S6PWYY5",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(MyApp());
}

//Class stateless สั่งแสดงผลหนาจอ
class MyApp extends StatelessWidget {
  const MyApp({super.key});
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(221, 205, 19, 19)),
        useMaterial3: true,
      ),
      home: Main(),
    );
  }
}

//Class stateful เรียกใช้การทํางานแบบโต้ตอบ
class Main extends StatefulWidget {
  @override
  State<Main> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Main> {
//ส่วนเขียน Code ภาษา dart เพื่อรับค่าจากหน้าจอมาคํานวณหรือมาทําบางอย่างและส่งค่ากลับไป
//ส่วนการออกแบบหน้าจอ
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'เมนูหลัก',
          style: TextStyle(
            color: Color.fromARGB(221, 255, 255, 255),
            fontSize: 23,
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: Color.fromARGB(221, 205, 19, 19),
      ),
      body: Stack(
        children: [
          // เพิ่มภาพพื้นหลัง
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "assets/bg.jpg"), // พาธของภาพที่อยู่ในโฟลเดอร์ assets
                fit: BoxFit.cover, // ปรับขนาดภาพให้เต็มพื้นที่
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min, // จัดตำแหน่งให้อยู่ตรงกลางจอ
              children: [
                Image.asset(
                  'assets/logo.png', // โลโก้
                  width: 170,
                  height: 170,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // เมื่อกดปุ่มจะไปหน้าที่สอง
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            addproduct(), // ไปหน้าจอ AddProduct
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color.fromARGB(255, 255, 85, 0), // กำหนดสีพื้นหลัง
                  ),
                  child: Text(
                    '    บันทึกสินค้า    ',
                    style: TextStyle(
                      color:
                          Color.fromARGB(221, 255, 255, 255), // กำหนดสีของฟอนต์
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // เมื่อกดปุ่มจะไปหน้าที่สอง
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            showproductgrid(), // ไปหน้าจอ AddProduct
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color.fromARGB(255, 255, 85, 0), // กำหนดสีพื้นหลัง
                  ),
                  child: Text(
                    '    แสดงข้อมูลสินค้า    ',
                    style: TextStyle(
                      color:
                          Color.fromARGB(221, 255, 255, 255), // กำหนดสีของฟอนต์
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // เมื่อกดปุ่มจะไปหน้าที่สอง
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            showproducttype(), // ไปหน้าจอ AddProduct
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color.fromARGB(255, 255, 85, 0), // กำหนดสีพื้นหลัง
                  ),
                  child: Text(
                    'ประเภทสินค้า',
                    style: TextStyle(
                      color:
                          Color.fromARGB(221, 255, 255, 255), // กำหนดสีของฟอนต์
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
