import 'package:flutter/material.dart';
import 'package:sanberappflutter/Tugas/Tugas11/Drawerscreen.dart';
import 'package:sanberappflutter/Tugas/Tugas11/Models/chart_model.dart';

class Telegram extends StatelessWidget {
  const Telegram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Telegram"),
        actions: [
          // ignore: prefer_const_constructors
          Container(
            padding: EdgeInsets.all(8),
            child: const Icon(Icons.search),
          )
        ],
      ),
      drawer: DrawerScreen(),
      body: ListView.separated(
        itemBuilder: (ctx, i) {
          return ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(items[i].profileUrl.toString()),
            ),
            title: Text(items[i].name.toString()),
            subtitle: Text(items[i].message.toString()),
            trailing: Text(items[i].time.toString()),
          );
        },
        separatorBuilder: (ctx, i) {
          return Divider();
        },
        itemCount: items.length,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.create,
          color: Colors.white,
        ),
        onPressed: () {
          print("Hello WOrld");
        },
      ),
    );
  }
}
