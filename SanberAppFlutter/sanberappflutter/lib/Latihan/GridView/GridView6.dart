import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class gridview6 extends StatelessWidget {
  final List bulan = [
    "Januari",
    "Fabruari",
    "Maret",
    "April",
    "Mei",
    "Juni",
    "Juli",
    "Agustus",
    "September",
    "Oktober",
    "November",
    "Desember"
  ];
  final List alphabet = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Grid View"),
        ),
        body: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          children: <Widget>[
            GridView.count(
              crossAxisCount: 3,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(20),
              children: List.generate(alphabet.length, (index) {
                return Container(
                  height: 100,
                  child: Card(
                    child: Center(
                        child: Text(alphabet[index],
                            style:
                                TextStyle(color: Colors.white, fontSize: 20))),
                    color: Colors.deepPurpleAccent,
                  ),
                );
              }),
            ),
            FlutterLogo(),
            ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(bulan[index], style: TextStyle(fontSize: 30)),
                  ),
                );
              },
              itemCount: bulan.length,
            ),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
          ],
        ));
  }
}
