import 'package:flutter/material.dart';
import 'package:sanberappflutter/Tugas/Tugas13/Buttom_nav.dart';

class loogin_screen extends StatefulWidget {
  const loogin_screen({Key? key}) : super(key: key);

  @override
  State<loogin_screen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<loogin_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen 13"),
      ),
      body: Center(
          child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/img/logo.png",
              height: 80,
              width: 80,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "JobFinder",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Color(0xff475808)),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff475BD8)),
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                decoration: InputDecoration.collapsed(hintText: "Email"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff475BD8)),
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                decoration: InputDecoration.collapsed(hintText: "Password"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xff475BD8),
                  border: Border.all(color: Color(0xff475BD8)),
                  borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ButtomNav();
                  }));
                },
                child: const Text(
                  "Login",
                  style: TextStyle(
                      color: Color(0xffffffff), fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
