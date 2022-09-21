import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sanberappflutter/Final_Project/Login_Screen.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);
  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    if (auth.currentUser != null) {
      print(auth.currentUser!.email);
    }
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
              IconButton(icon: Icon(Icons.extension), onPressed: () {}),
            ]),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/img/appank.png",
                    height: 250,
                    width: 250,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Nama :", style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text("Baso Arfan Efendy",
                style: TextStyle(fontSize: 20, color: Colors.blue[900])),
            SizedBox(height: 10),
            Text("Email :", style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: auth.currentUser!.email,
                    style: TextStyle(color: Colors.blue[900]),
                  ),
                ],
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  _signOut().then((value) => Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(
                          builder: (context) => LoginScreen())));
                },
                child: Text('Logut'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
