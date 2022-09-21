import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sanberappflutter/Final_Project/Login_Screen.dart';
import 'package:sanberappflutter/Latihan/GridView/GridView6.dart';
import 'package:sanberappflutter/Latihan/ListView/ListView1.dart';
import 'package:sanberappflutter/Latihan/ListView/ListView2.dart';
import 'package:sanberappflutter/Latihan/ListView/ListView3.dart';
import 'package:sanberappflutter/Latihan/ListView/ListView4.dart';
//import 'package:sanberappflutter/Tugas/Tugas11/Telegram.dart';
//import 'package:sanberappflutter/Tugas/Tugas12/login_screen.dart';
//import 'package:sanberappflutter/Tugas/Tugas12/home_screen.dart';
// import 'package:sanberappflutter/Tugas/Tugas13/login_screen.dart';
import 'package:sanberappflutter/Tugas/Tugas14/get_data_detail_sreen.dart';
import 'package:sanberappflutter/Tugas/Tugas14/get_data_screen.dart';
//import 'package:sanberappflutter/Quiz3/login_screen.dart';
import 'package:sanberappflutter/Tugas/Tugas15/splashscreeen.dart';

// void main() {
//   runApp(const MyApp());
// }
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
