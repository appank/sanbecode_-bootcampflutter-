import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class gridview2 extends StatelessWidget {
  const gridview2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
      ),
      body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(9, (index) {
            return Container(
              child: Card(
                color: Colors.deepPurple,
              ),
            );
          })),
    );
  }
}
